"""Compile seven adders at selected widths and simulate three post-fit timing corners.

From the repository root: python3 Simulation/Timing/RunTiming.py --help
Build artifacts go to the ignored .timing-build folder.
"""
import argparse
import hashlib
import json
import os
import runpy
import shutil
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
BUILD = ROOT / '.timing-build'
TB = (Path(__file__).parent / 'TimingTB.vhd').read_text(encoding='ascii')
DEVICES = {'EP4CE30F23C6': 'Cyclone IV E', 'EP2AGX45DF29C6': 'Arria II GX'}
QUARTUS_SH = None
VSIM = None
SOURCES = {
    'Ripple': ['AdderBaseline.vhd'],
    'FastRipple': ['AdderFastRipple.vhd'],
    'ConditionalSum': ['ConditionalSumCarry.vhd', 'AdderConditionalSum.vhd'],
    'BlockLookahead': ['LookaheadCarryNet.vhd', 'AdderBlockLookahead.vhd'],
    'BrentKung': ['BLAN.vhd', 'AdderBrentKung.vhd'],
    'KoggeStone': ['BLAN.vhd', 'BLANKoggeStone.vhd', 'AdderKoggeStone.vhd'],
    'CarrySkip': ['AdderCarrySkip.vhd'],
}
GENERATOR = runpy.run_path(str(ROOT / 'Simulation/TestVectors/GenAdderVectors.py'))
WIDTH_VECTORS = ROOT / 'Simulation/TestVectors/WidthSweep'


def experiment_folder(device, topology, width=64):
    suffix = '' if width == 64 else f'_N{width}'
    return BUILD / f'{device}_{topology}{suffix}'


def vector_paths(width):
    return (WIDTH_VECTORS / f'AdderRandom_N{width}.tvs',
            WIDTH_VECTORS / f'TimingVectorsDraft_N{width}.tvs')


def generate_width_vectors(width):
    """Reconstruct carry/sign boundaries for N, rather than truncate 64-bit rows."""
    WIDTH_VECTORS.mkdir(parents=True, exist_ok=True)
    random_path, pair_path = vector_paths(width)
    rows = GENERATOR['generate'](350, 500, width)
    pairs = GENERATOR['timing_pairs'](width)
    GENERATOR['write_vectors'](random_path, (v for _, v in rows), width)
    GENERATOR['write_vectors'](pair_path, (v for _, s, t in pairs for v in (s, t)), width)
    for path in (random_path, pair_path):
        if GENERATOR['check_file'](path, width):
            raise RuntimeError(f'Generated vectors failed their check: {path}')


def reusable(device, topology, width):
    """Reuse only complete, matching experiments (including the 64-bit baseline)."""
    folder = experiment_folder(device, topology, width)
    try:
        manifest = json.loads((folder / 'manifest.json').read_text())
        if (manifest.get('width', 64) != width or manifest['device'] != device
                or manifest['topology'] != topology):
            return False
        for name, digest in manifest['source_sha256'].items():
            if hashlib.sha256((ROOT / 'SourceCode' / name).read_bytes()).hexdigest() != digest:
                return False
        vectors = b''.join(path.read_bytes() for path in vector_paths(width))
        # Normalize line endings for the earlier baseline generated on Windows.
        stored = (folder / 'vectors.tvs').read_bytes()
        if stored.replace(b'\r\n', b'\n') != vectors.replace(b'\r\n', b'\n'):
            return False
        if 'Full Compilation was successful' not in (folder / 'compile.log').read_text(errors='replace'):
            return False
        for corner in ('slow85', 'slow0', 'fast0'):
            log = (folder / corner / 'simulation.log').read_text(errors='replace')
            if not all(s in log for s in ('SDF Backannotation Successfully Completed',
                                         'TIMING_COMPLETE vectors=514', '# Errors: 0')):
                return False
            if len((folder / corner / 'measurements.csv').read_text().splitlines()) != 515:
                return False
        return True
    except (OSError, KeyError, ValueError):
        return False


def resolve_tool(name, directory=None):
    """Use an explicit bin directory, PATH, then common 20.1 install locations."""
    windows = sys.platform == 'win32'
    executable = name + ('.exe' if windows else '')
    if directory is not None:
        candidates = [directory.expanduser() / executable]
    else:
        found = shutil.which(executable)
        if found:
            return Path(found).absolute()
        roots = ([Path('C:/intelFPGA_lite/20.1')] if windows else
                 [Path.home() / 'intelFPGA_lite/20.1', Path('/opt/intelFPGA_lite/20.1')])
        if name == 'quartus_sh':
            subdirs = ['quartus/bin64'] if windows else ['quartus/bin', 'quartus/bin64']
        else:
            subdirs = ['modelsim_ase/win32aloem'] if windows else ['modelsim_ase/bin', 'modelsim_ase/linuxaloem']
        candidates = [root / subdir / executable for root in roots for subdir in subdirs]
    for candidate in candidates:
        if candidate.is_file() and os.access(candidate, os.X_OK):
            return candidate.absolute()
    option = '--quartus-bin' if name == 'quartus_sh' else '--modelsim-bin'
    raise FileNotFoundError(f'Cannot find executable {executable}; add it to PATH or set {option} to its directory')


def run(command, folder, logfile):
    print('RUN', folder.relative_to(BUILD), Path(str(command[0])).name, flush=True)
    with (folder / logfile).open('w', encoding='utf-8') as log:
        result = subprocess.run([str(x) for x in command], cwd=folder, stdout=log,
                                stderr=subprocess.STDOUT, creationflags=0x08000000 if sys.platform == 'win32' else 0)
    if result.returncode:
        print((folder / logfile).read_text(errors='replace')[-7000:], flush=True)
        raise RuntimeError(f'{logfile}: exit {result.returncode}')


def prepare(device, topology, width=64):
    folder = experiment_folder(device, topology, width)
    folder.mkdir(parents=True, exist_ok=True)
    family = DEVICES[device]
    voltage = '0.9V' if device.startswith('EP2AGX') else '1.2V'
    files = ['Adder.vhd', *SOURCES[topology]]
    qsf = [
        f'set_global_assignment -name FAMILY "{family}"',
        f'set_global_assignment -name DEVICE {device}',
        f'set_parameter -name N {width}',
        'set_global_assignment -name TOP_LEVEL_ENTITY Adder',
        'set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files',
        'set_global_assignment -name VHDL_INPUT_VERSION VHDL_2008',
        'set_global_assignment -name SEED 1',
        'set_global_assignment -name NUM_PARALLEL_PROCESSORS 4',
        'set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0',
        'set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85',
        f'set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE {voltage}',
        'set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"',
        'set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim (VHDL)"',
        'set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation',
        'set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation',
        'set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_simulation',
        'set_global_assignment -name SDC_FILE timing.sdc',
    ]
    qsf += [f'set_global_assignment -name VHDL_FILE "{(ROOT / "SourceCode" / name).as_posix()}"' for name in files]
    (folder / 'timing.qsf').write_text('\n'.join(qsf) + '\n')
    (folder / 'timing.qpf').write_text('QUARTUS_VERSION = "20.1"\nPROJECT_REVISION = "timing"\n')
    (folder / 'timing.sdc').write_text('create_clock -name virtual_io -period 1000\nset_input_delay -clock virtual_io 0 [all_inputs]\nset_output_delay -clock virtual_io 0 [all_outputs]\n')
    (folder / 'TimingTB.vhd').write_text(TB)
    vector_data = b''.join(path.read_bytes() for path in vector_paths(width))
    (folder / 'vectors.tvs').write_bytes(vector_data)
    (folder / f'vectors_N{width}.tvs').write_bytes(vector_data)
    manifest = {'device': device, 'family': family, 'topology': topology, 'width': width,
                'seed': 1, 'hold_ns': 200, 'random_seed': 350, 'random_count': 500,
                'timing_pair_count': 7, 'source_sha256': {name: hashlib.sha256((ROOT / 'SourceCode' / name).read_bytes()).hexdigest() for name in files},
                'vector_sha256': hashlib.sha256(vector_data).hexdigest()}
    (folder / 'manifest.json').write_text(json.dumps(manifest, indent=2))
    return folder


def simulate(folder, width=64):
    netlists = list(folder.glob('simulation/modelsim/*.vho'))
    sdfs = list(folder.glob('simulation/modelsim/*.sdo'))
    for corner, token, delay_mode in [('slow85', '85c', 'max'),
                                      ('slow0', '0c', 'max'),
                                      ('fast0', '0c', 'min')]:
        speed = 'fast' if corner == 'fast0' else 'slow'
        sdf = next(p for p in sdfs if f'_{token}_vhd_{speed}' in p.name)
        netlist = next(p for p in netlists if f'_{token}_{speed}' in p.name)
        simdir = folder / corner
        simdir.mkdir(exist_ok=True)
        (simdir / 'TimingTB.vhd').write_text(TB)
        (simdir / 'vectors.tvs').write_bytes((folder / 'vectors.tvs').read_bytes())
        (simdir / f'vectors_N{width}.tvs').write_bytes((folder / 'vectors.tvs').read_bytes())
        # Relative paths avoid an old ModelSim sdfcom bug with spaces in paths.
        sdfpath = '../' + sdf.relative_to(folder).as_posix()
        netpath = '../' + netlist.relative_to(folder).as_posix()
        commands = [
            'onerror {quit -f -code 1}',
            'onbreak {quit -f -code 1}',
            'if {![file exists work]} {vlib work}',
            'vmap work work',
            f'vcom -2008 {netpath}',
            'vcom -2008 TimingTB.vhd',
            f'vsim -t 1ps -voptargs=+acc -gN={width} -sdf{delay_mode} /TimingTB/DUT={sdfpath} work.TimingTB',
            'vcd file timing.vcd',
            'vcd add /TimingTB/A /TimingTB/B /TimingTB/Cin /TimingTB/S /TimingTB/Cout /TimingTB/Ovfl',
            'run -all',
            'vcd flush',
            'quit -f -code 0',
        ]
        (simdir / 'simulate.do').write_text('\n'.join(commands) + '\n')
        run([VSIM, '-c', '-do', 'simulate.do'], simdir, 'simulation.log')
        log = (simdir / 'simulation.log').read_text(errors='replace')
        required = ['SDF Backannotation Successfully Completed',
                    'TIMING_COMPLETE vectors=514', '# Errors: 0']
        if not all(message in log for message in required):
            raise RuntimeError(f'Missing timing-validation messages in {simdir}/simulation.log')
        print('SIM_PASS', folder.name, corner, flush=True)


def main():
    global QUARTUS_SH, VSIM
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--device', nargs='+', choices=list(DEVICES), default=list(DEVICES))
    parser.add_argument('--topology', nargs='+', choices=list(SOURCES), default=list(SOURCES))
    parser.add_argument('--phase', choices=['all', 'build', 'simulate'], default='all',
                        help='all = compile then simulate; simulate reuses existing fits')
    parser.add_argument('--jobs', type=int, default=1, help='independent builds in parallel (default 1)')
    parser.add_argument('--width', type=int, nargs='+', choices=(8,16,32,64), default=[64])
    parser.add_argument('--reuse', action='store_true', help='skip complete matching runs (useful for the 64-bit baseline)')
    parser.add_argument('--quartus-bin', type=Path, help='directory containing quartus_sh (default: PATH/common installs)')
    parser.add_argument('--modelsim-bin', type=Path, help='directory containing vsim (default: PATH/common installs)')
    args = parser.parse_args()
    if args.jobs < 1:
        parser.error('--jobs must be positive')
    try:
        if args.phase != 'simulate':
            QUARTUS_SH = resolve_tool('quartus_sh', args.quartus_bin)
        if args.phase != 'build':
            VSIM = resolve_tool('vsim', args.modelsim_bin)
    except OSError as error:
        parser.error(str(error))
    # Reject corrupt inputs before spending time compiling. The old deliberate
    # failure in Adder00.tvs is NOT part of these timing runs.
    checker = ROOT / 'Simulation/TestVectors/GenAdderVectors.py'
    for vector_file in [ROOT / 'Simulation/AdderRandom.tvs',
                        ROOT / 'Simulation/TestVectors/TimingVectorsDraft.tvs']:
        subprocess.run([sys.executable, str(checker), '--check', str(vector_file)], check=True)
    generator = runpy.run_path(str(checker))
    format_vector = generator['format_vector']
    expected_random = [format_vector(*v) for _, v in generator['generate'](350, 500)]
    expected_pairs = [format_vector(*v) for _, setup, trigger in generator['timing_pairs']()
                      for v in (setup, trigger)]
    if (ROOT / 'Simulation/AdderRandom.tvs').read_text().splitlines() != expected_random:
        parser.error('Regenerate AdderRandom.tvs with --seed 350 --count 500 for this experiment')
    if (ROOT / 'Simulation/TestVectors/TimingVectorsDraft.tvs').read_text().splitlines() != expected_pairs:
        parser.error('Regenerate TimingVectorsDraft.tvs with --timing-out for this experiment')
    for width in dict.fromkeys(args.width):
        generate_width_vectors(width)

    def experiment(target):
        device, topology, width = target
        folder = experiment_folder(device, topology, width)
        if args.reuse and args.phase == 'all' and reusable(device, topology, width):
            print('REUSE', folder.name, flush=True)
            return
        old_manifest = None
        if args.phase == 'simulate':
            fit_summary = folder / 'output_files/timing.fit.summary'
            if not fit_summary.exists() or 'Successful' not in fit_summary.read_text():
                raise RuntimeError(f'No successful fit for {folder.name}; run --phase build first')
            old_manifest = json.loads((folder / 'manifest.json').read_text())
            if (old_manifest.get('width', 64) != width or old_manifest['device'] != device
                    or old_manifest['topology'] != topology):
                raise RuntimeError('Device/topology/width changed; rebuild before simulating')
            for name, digest in old_manifest['source_sha256'].items():
                current = hashlib.sha256((ROOT / 'SourceCode' / name).read_bytes()).hexdigest()
                if current != digest:
                    raise RuntimeError('RTL changed since compilation; rebuild before simulating')
        folder = prepare(device, topology, width)
        if args.phase != 'simulate':
            run([QUARTUS_SH, '--flow', 'compile', 'timing'], folder, 'compile.log')
        if args.phase != 'build':
            simulate(folder, width)
        print('DONE', folder.name, flush=True)

    targets = [(device, topology, width) for width in dict.fromkeys(args.width)
               for device in dict.fromkeys(args.device) for topology in dict.fromkeys(args.topology)]
    with ThreadPoolExecutor(max_workers=args.jobs) as pool:
        # Iterating results propagates any worker error instead of silently accepting it.
        list(pool.map(experiment, targets))


if __name__ == '__main__':
    main()
