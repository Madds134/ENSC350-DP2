"""Validate timing-run data, then create CSV tables, Excel charts and report figures."""
import csv
import hashlib
import importlib.util
import json
import re
import sys
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
BUILD = ROOT / '.timing-build'
OUT = ROOT / 'Documentation/TimingResults'
# Supports either a normal pip installation or the local install in the guide.
sys.path.insert(0, str(BUILD / 'python'))
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np
from openpyxl import Workbook, load_workbook
from openpyxl.chart import BarChart, Reference
from openpyxl.chart.series import SeriesLabel
from openpyxl.drawing.image import Image
from openpyxl.styles import Font, PatternFill, Alignment
import RunTiming as flow

PAIR_NAMES = ['CS1', 'CS2', 'CS3', 'KS1', 'KS2', 'KS3', 'KS4']
CORNERS = ['slow85', 'slow0', 'fast0']
OUTPUTS = ['S', 'Cout', 'Ovfl']
REPORT_DATE = datetime.now(timezone.utc).date().isoformat()


def load_module(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def save_csv(name, rows):
    with (OUT / name).open('w', newline='', encoding='utf-8') as stream:
        writer = csv.DictWriter(stream, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)


def check_vcd(path, measurements):
    """Independently recover last output-event times from the actual waveform."""
    codes, values, last = {}, {}, {}
    timestamp = 0
    header = True
    with path.open() as stream:
        for line in stream:
            words = line.split()
            if header:
                if words and words[0] == '$var' and words[4] in OUTPUTS:
                    codes[words[3]] = words[4]
                if words and words[0] == '$enddefinitions':
                    header = False
                continue
            line = line.strip()
            if line.startswith('#'):
                timestamp = int(line[1:])
            elif line and line[0] in '01xXzZ':
                code, value = line[1:], line[0]
                if code in codes and values.get(code) != value:
                    values[code] = value
                    index = timestamp // 200000
                    if 1 <= index <= 514:
                        last[index, codes[code]] = timestamp - index * 200000
    for row in measurements:
        for signal in OUTPUTS:
            observed = int(row[signal + '_ps'])
            waveform = last.get((int(row['index']), signal), -1)
            if observed != waveform:
                raise ValueError(f'{path}: row {row["index"]} {signal}: CSV {observed}, VCD {waveform}')


def resource_count(text, pattern):
    match = re.search(pattern, text)
    return int(match[1].replace(',', '')) if match else None


def collect():
    gen = load_module('vectors', ROOT / 'Simulation/TestVectors/GenAdderVectors.py')
    categories = [name for name, _ in gen.generate(350, 500)]
    expected_lines = (ROOT / 'Simulation/AdderRandom.tvs').read_text().splitlines()
    expected_lines += (ROOT / 'Simulation/TestVectors/TimingVectorsDraft.tvs').read_text().splitlines()
    regenerated = [gen.format_vector(*v) for _, v in gen.generate(350, 500)]
    if expected_lines[:500] != regenerated or len(expected_lines) != 514:
        raise ValueError('Vector files do not match the documented seed/count')
    vectors = []
    for index, line in enumerate(expected_lines, 1):
        a, b, cin, s, cout, ovfl = line.split()
        kind = 'random' if index <= 500 else ('setup' if index % 2 else 'trigger')
        case = f'R{index:03}' if index <= 500 else PAIR_NAMES[(index-501)//2]
        vectors.append(dict(Index=index, Case=case, Role=kind,
                            Category=categories[index-1] if index <= 500 else 'timing pair',
                            A=a, B=b, Cin=int(cin), ExpectedS=s, ExpectedCout=int(cout), ExpectedOvfl=int(ovfl)))
    details, corners, pairs, designs, evidence = [], [], [], [], []
    for device, family in flow.DEVICES.items():
        for topology in flow.SOURCES:
            folder = BUILD / f'{device}_{topology}'
            manifest = json.loads((folder / 'manifest.json').read_text())
            for name, digest in manifest['source_sha256'].items():
                if hashlib.sha256((ROOT / 'SourceCode' / name).read_bytes()).hexdigest() != digest:
                    raise ValueError(f'RTL changed after compilation: {name}')
            fit = (folder / 'output_files/timing.fit.summary').read_text()
            fit_full = (folder / 'output_files/timing.fit.rpt').read_text()
            if 'Successful' not in fit or device not in fit:
                raise ValueError(f'Invalid fit for {folder.name}')
            design_rows = []
            for corner in CORNERS:
                simdir = folder / corner
                log = (simdir / 'simulation.log').read_text(errors='replace')
                if not all(x in log for x in ['SDF Backannotation Successfully Completed',
                                             'TIMING_COMPLETE vectors=514', '# Errors: 0']):
                    raise ValueError(f'Incomplete/invalid simulation: {simdir}')
                if (simdir / 'vectors.tvs').read_text().splitlines() != expected_lines:
                    raise ValueError('Simulation used different vectors')
                raw = list(csv.DictReader((simdir / 'measurements.csv').open()))
                if len(raw) != 514:
                    raise ValueError(f'Expected 514 measurements: {simdir}')
                check_vcd(simdir / 'timing.vcd', raw)
                rows = []
                for index, (measurement, vector) in enumerate(zip(raw, vectors), 1):
                    fields = expected_lines[index-1].split()
                    actual = [measurement[x] for x in ['A','B','Cin','S','Cout','Ovfl']]
                    if int(measurement['index']) != index or measurement['pass'] != 'true' or actual != fields:
                        raise ValueError(f'Incorrect output or index: {simdir}, vector {index}')
                    delays = {signal + '_ns': None if int(measurement[signal + '_ps']) < 0
                              else int(measurement[signal + '_ps'])/1000 for signal in OUTPUTS}
                    events = [v for v in delays.values() if v is not None]
                    row = dict(Family=family, Device=device, Topology=topology, Corner=corner,
                               Index=index, Case=vector['Case'], Role=vector['Role'],
                               Category=vector['Category'], **delays,
                               LastEvent_ns=max(events) if events else None, Pass=True)
                    if events and max(events) >= 200:
                        raise ValueError('Hold interval is too short')
                    rows.append(row)
                    if row['Role'] == 'trigger':
                        pairs.append(row.copy())
                details.extend(rows)
                design_rows.extend(rows)
                tested = [r for r in rows if r['Role'] != 'setup' and r['LastEvent_ns'] is not None]
                randoms = [r['LastEvent_ns'] for r in tested if r['Role'] == 'random']
                triggers = [r['LastEvent_ns'] for r in tested if r['Role'] == 'trigger']
                worst = max(tested, key=lambda r:r['LastEvent_ns'])
                corners.append(dict(Family=family, Device=device, Topology=topology, Corner=corner,
                    RandomMax_ns=max(randoms), RandomMean_ns=float(np.mean(randoms)),
                    RandomP95_ns=float(np.percentile(randoms,95)), PairMax_ns=max(triggers),
                    TestedMax_ns=worst['LastEvent_ns'], WorstCase=worst['Case'],
                    SMax_ns=max(r['S_ns'] for r in tested if r['S_ns'] is not None),
                    CoutMax_ns=max(r['Cout_ns'] for r in tested if r['Cout_ns'] is not None),
                    OvflMax_ns=max(r['Ovfl_ns'] for r in tested if r['Ovfl_ns'] is not None),
                    Checks=514, Failures=0))
                evidence.append(dict(Device=device, Topology=topology, Corner=corner,
                    MeasurementSHA256=hashlib.sha256((simdir/'measurements.csv').read_bytes()).hexdigest(),
                    WaveformSHA256=hashlib.sha256((simdir/'timing.vcd').read_bytes()).hexdigest(),
                    SDF_annotated=True, VCD_crosscheck=True))
            slow = [r for r in design_rows if r['Corner'].startswith('slow') and r['Role'] != 'setup' and r['LastEvent_ns'] is not None]
            fast = [r for r in design_rows if r['Corner']=='fast0' and r['Role'] != 'setup' and r['LastEvent_ns'] is not None]
            worst = max(slow, key=lambda r:r['LastEvent_ns'])
            designs.append(dict(Family=family, Device=device, Topology=topology,
                LE=resource_count(fit,r'Total logic elements\s*:\s*([\d,]+)'),
                ALUT=resource_count(fit,r'Combinational ALUTs\s*:\s*([\d,]+)'),
                ALM=resource_count(fit_full,r'ALMs:\s+partially or completely used\s*;\s*([\d,]+)'),
                Pins=resource_count(fit,r'Total pins\s*:\s*([\d,]+)'),
                Registers=resource_count(fit,r'Total registers\s*:\s*([\d,]+)'),
                SlowRandomMax_ns=max(r['LastEvent_ns'] for r in slow if r['Role']=='random'),
                SlowPairMax_ns=max(r['LastEvent_ns'] for r in slow if r['Role']=='trigger'),
                SlowTestedMax_ns=worst['LastEvent_ns'], WorstCase=worst['Case'], WorstCorner=worst['Corner'],
                FastTestedMax_ns=max(r['LastEvent_ns'] for r in fast), Checks=1542, Failures=0))
    return vectors, details, corners, pairs, designs, evidence


def clean_svg(path):
    # Matplotlib leaves spaces at the ends of SVG path-coordinate lines.
    # Retain newlines as separators while keeping git diff --check clean.
    text=path.read_text(encoding='utf-8')
    path.write_bytes(('\n'.join(line.rstrip() for line in text.splitlines())+'\n').encode('utf-8'))


def save_figure(fig, stem):
    fig.savefig(OUT / (stem + '.png'), dpi=180, bbox_inches='tight')
    fig.savefig(OUT / (stem + '.svg'), bbox_inches='tight')
    clean_svg(OUT / (stem + '.svg'))
    plt.close(fig)


def make_figures(designs, pairs):
    plt.rcParams.update({'font.size':10, 'axes.spines.top':False, 'axes.spines.right':False})
    colors = ['#245B85', '#D0782B']
    fig, axes = plt.subplots(2,1,figsize=(11,8), sharex=True)
    for ax, (device, family), color in zip(axes, flow.DEVICES.items(), colors):
        rows = [r for r in designs if r['Device']==device]
        x = np.arange(len(rows))
        for shift, key, label, alpha in [(-.2,'SlowRandomMax_ns','500 random vectors',1),(.2,'SlowPairMax_ns','7 pair triggers',.55)]:
            bars=ax.bar(x+shift,[r[key] for r in rows],.38,label=label,color=color,alpha=alpha)
            ax.bar_label(bars,fmt='%.2f',fontsize=8,padding=2)
        ax.set_title(f'{family} — {device}')
        ax.set_ylabel('Last output event (ns)')
        ax.set_ylim(0,max(r['SlowTestedMax_ns'] for r in rows)*1.2)
        ax.legend(loc='upper center',fontsize=9,ncol=2)
        ax.grid(axis='y',alpha=.2)
    axes[-1].set_xticks(np.arange(len(flow.SOURCES)),flow.SOURCES,rotation=15)
    fig.suptitle('Largest observed settling delay across slow 0°C and 85°C corners\nPost-fit simulation · I/O included · fitter seed 1',fontsize=13)
    fig.tight_layout(rect=(0,0,1,.94))
    save_figure(fig,'timing_comparison')

    fig,ax=plt.subplots(figsize=(11,4.8))
    for shift,(device,family),color in zip([-.2,.2],flow.DEVICES.items(),colors):
        data=[]
        for pair in PAIR_NAMES:
            topo='CarrySkip' if pair.startswith('CS') else 'KoggeStone'
            data.append(max(r['LastEvent_ns'] for r in pairs if r['Device']==device and r['Topology']==topo and r['Case']==pair and r['Corner'].startswith('slow')))
        bars=ax.bar(np.arange(7)+shift,data,.38,label=family,color=color)
        ax.bar_label(bars,fmt='%.2f',fontsize=8,padding=2)
    ax.set_xticks(np.arange(7),PAIR_NAMES)
    ax.set_ylabel('Last output event (ns)')
    ax.set_title('Draft timing pairs on their intended architectures\nMaximum over slow 0°C and 85°C; setup transitions excluded')
    ax.legend(); ax.grid(axis='y',alpha=.2)
    ax.set_ylim(0,ax.get_ylim()[1]*1.12)
    save_figure(fig,'timing_pairs')

    wave=load_module('plot_waves',ROOT/'Simulation/plot_waves.py')
    for topology,prefix in [('CarrySkip','CS'),('KoggeStone','KS')]:
        candidate=max((r for r in pairs if r['Topology']==topology and r['Case'].startswith(prefix) and r['Corner'].startswith('slow')),key=lambda r:r['LastEvent_ns'])
        folder=BUILD/f'{candidate["Device"]}_{topology}'/candidate['Corner']
        history,widths,_=wave.read_vcd(folder/'timing.vcd')
        start=candidate['Index']*200000
        shifted={name:[(t-start,value) for t,value in changes] for name,changes in history.items()}
        # Show the changing input bits explicitly: a short 16-digit bus label
        # would hide the least significant bit that actually triggers the pair.
        for name,bit in [('A',0),('B',0),('S',63)]:
            bit_name=f'{name}[{bit}]'
            changes=[]
            for t,value in shifted[name]:
                bit_value=value[-1-bit]
                if not changes or changes[-1][1] != bit_value:
                    changes.append((t,bit_value))
            shifted[bit_name]=changes
            widths[bit_name]=1
        title=f'{topology} {candidate["Case"]} · {candidate["Device"]} · {candidate["Corner"]}\nTrigger at 0 ns; last output event {candidate["LastEvent_ns"]:.3f} ns'
        for suffix in ['png','svg']:
            wave.plot(shifted,widths,['A[0]','B[0]','Cin','S','S[63]','Cout','Ovfl'],-5000,
                      candidate['LastEvent_ns']*1000+8000,set(),title,
                      str(OUT/f'{topology.lower()}_worst_pair.{suffix}'),[],check=False)
            if suffix=='svg':
                clean_svg(OUT/f'{topology.lower()}_worst_pair.svg')


def make_workbook(tables):
    wb=Workbook(); wb.remove(wb.active)
    notes=[
        ('Experiment','64-bit combinational adders; two devices, seven architectures, three timing corners'),
        ('Devices','Cyclone IV E EP4CE30F23C6; Arria II GX EP2AGX45DF29C6'),
        ('Tools','Quartus Prime Lite 20.1.1 build 720; ModelSim Intel FPGA Starter 2020.1'),
        ('Corners','slow85 / slow0 use maximum SDF; fast0 uses minimum SDF. Core: Cyclone 1.2 V; Arria 0.9 V.'),
        ('Inputs','Seed 350; 500 random rows followed by 14 rows forming seven setup/trigger pairs.'),
        ('Hold','200 ns per row; initial all-zero inputs held for 200 ns; no X interval.'),
        ('Metric','Time from input application to LAST event on S bus, Cout or Ovfl, including glitches. Final value checked at 200 ns.'),
        ('Blank delay','No event occurred on that output during the interval; not a measured zero delay.'),
        ('Summary population','500 random transitions plus 7 pair triggers. Seven pair setup rows checked but excluded from summary maxima.'),
        ('Limit','Observed vector-dependent maxima, not proof of global worst-case delay or measured hardware performance. No clocked Fmax.'),
        ('Fit','Seed 1, normal optimization, automatic pin placement, 2.5 V I/O, 0–85 C; no virtual pins; 195 physical I/O pins.'),
        ('Constraints','Virtual clock 1000 ns; zero external input/output delays. Used to constrain combinational paths; not a real operating clock.'),
        ('Area','Cyclone LE versus Arria ALUT/ALM: different hardware units; do not equate their counts.'),
        ('Validation','All CSV event times independently checked against VCD waveforms; SDF success and final outputs checked.'),
        ('Warnings','Automatic pin locations; virtual clock uncertainty unspecified; unused optional LogicLock license; ModelSim recommended capacity exceeded. See report.'),
        ('Artifacts','Raw Quartus/ModelSim outputs stay in ignored .timing-build. Scripts, workbook, CSVs, figures, report are shareable.'),
        ('Date',REPORT_DATE+' UTC. Raw tool timestamps use the host local date/time.'),
    ]
    ws=wb.create_sheet('Read me'); ws.append(['Item','Explanation'])
    for row in notes: ws.append(row)
    for name,rows in tables.items():
        ws=wb.create_sheet(name)
        ws.append(list(rows[0]))
        for row in rows: ws.append(list(row.values()))
    ws=wb.create_sheet('Charts')
    for row,stem in [(1,'timing_comparison'),(44,'timing_pairs'),(73,'carryskip_worst_pair'),(103,'koggestone_worst_pair')]:
        image=Image(str(OUT/(stem+'.png')))
        factor=min(1,1000/image.width); image.width*=factor; image.height*=factor
        ws.add_image(image,f'A{row}')
    # Native Excel chart uses the numeric summary cells, so it remains editable.
    summary=wb['Design summary']
    chart=BarChart(); chart.title='Slow-corner observed maximum'; chart.y_axis.title='ns'
    column=list(tables['Design summary'][0]).index('SlowTestedMax_ns')+1
    for start, family in zip([2,9],flow.DEVICES.values()):
        chart.add_data(Reference(summary,min_col=column,min_row=start,max_row=start+6))
        chart.series[-1].tx=SeriesLabel(strRef=None,v=family)
    chart.set_categories(Reference(summary,min_col=3,min_row=2,max_row=8))
    chart.width=27; chart.height=12
    wb['Charts'].add_chart(chart,'A135')
    for ws in wb:
        if ws.title=='Charts': continue
        ws.freeze_panes='A2'; ws.auto_filter.ref=ws.dimensions
        for cell in ws[1]:
            cell.font=Font(color='FFFFFF',bold=True)
            cell.fill=PatternFill('solid',fgColor='245B85')
        for col in ws.columns:
            header=str(col[0].value)
            width=min(34,max(14,len(header)+2))
            if header in ['A','B','ExpectedS']: width=21
            ws.column_dimensions[col[0].column_letter].width=width
            if header.endswith('_ns'):
                for cell in col[1:]: cell.number_format='0.000'
        if ws.title=='Read me':
            ws.column_dimensions['B'].width=115
            for row in ws.iter_rows(min_row=2):
                row[1].alignment=Alignment(wrap_text=True,vertical='top')
                ws.row_dimensions[row[0].row].height=32
    path=OUT/'AdderTimingResults.xlsx'; wb.save(path)
    check=load_workbook(path,read_only=True,data_only=True)
    if check['All measurements'].max_row != 21589:
        raise ValueError('Workbook row-count check failed')
    check.close()


def update_report(designs, pairs):
    lines=[f'## Compiled timing results — {REPORT_DATE}', '',
        'Targets: **Cyclone IV E `EP4CE30F23C6`** and **Arria II GX `EP2AGX45DF29C6`**. '
        'The earlier EP4CE115 target was superseded and is excluded from these results.', '',
        'All **14 fits** and **42 post-fit simulations** completed. All **21,588 vector checks passed** '
        '(514 rows × 7 architectures × 2 devices × 3 corners). Each run confirmed successful SDF '
        'back-annotation, and every measured output-event time was independently cross-checked against its VCD waveform.', '',
        '[Excel workbook](../Documentation/TimingResults/AdderTimingResults.xlsx) · '
        '[Design summary CSV](../Documentation/TimingResults/design_summary.csv) · '
        '[Corner table](../Documentation/TimingResults/corner_summary.csv) · '
        '[All measurements](../Documentation/TimingResults/measurements.csv) · '
        '[Run the workflow](../Simulation/Timing/README.md)', '',
        '### Method and interpretation', '',
        'Quartus Prime Lite 20.1.1 build 720 compiled each architecture separately; ModelSim Intel FPGA '
        'Starter 2020.1 simulated the generated VHDL netlist with its matching SDF. Corners were slow '
        '0°C, slow 85°C (maximum SDF selection), and fast 0°C (minimum SDF selection), at the device '
        'core voltages 1.2 V for Cyclone and 0.9 V for Arria. Both targets use speed grade C6.', '',
        'The fit uses seed 1, automatic physical pin placement, 2.5 V I/O, 195 I/O pins, no registers, '
        'and the existing RTL/default optimization. A 1000 ns virtual clock with zero external I/O '
        'delays constrains the combinational paths; it is not an operating clock or an Fmax result. '
        'The measurements include the input/output buffers and fitted routing, so they compare these '
        'specific implementations rather than abstract adder logic alone.', '',
        'The testbench holds initial zero inputs for 200 ns, then applies the 500 seed-350 random '
        'vectors followed by the 14 timing-pair rows, each for 200 ns, with no X interval. Delay is '
        'the time to the **last event** on S, Cout or Ovfl after an input application, including '
        'glitches even when the final output is unchanged. Final outputs are checked against the '
        'generated expectations. Blank per-output delay cells mean no event, not zero delay. '
        'Summary maxima use the 500 random transitions and seven pair triggers; the seven setup '
        'transitions are checked and retained in raw tables but excluded from those maxima.', '',
        '**These are observed, vector-dependent settling maxima, not proof of the global worst-case '
        'delay, hardware measurements, or a guaranteed clock frequency.** Only one fitter seed was '
        'tested. LE and ALUT/ALM counts use different hardware units.', '',
        '### Device and topology comparison', '',
        'Slow columns take the maximum over both slow-temperature corners. Fast is the maximum '
        'observed among the same tested transitions at fast 0°C. All times are ns.', '',
        '| Device | Topology | Area | Random slow max | Pair slow max | Tested slow max | Worst case | Fast tested max |',
        '| --- | --- | --- | ---: | ---: | ---: | --- | ---: |']
    for r in designs:
        area=f'{r["LE"]} LE' if r['LE'] is not None else f'{r["ALUT"]} ALUT / {r["ALM"]} ALM'
        lines.append(f'| {r["Device"]} | {r["Topology"]} | {area} | {r["SlowRandomMax_ns"]:.3f} | {r["SlowPairMax_ns"]:.3f} | {r["SlowTestedMax_ns"]:.3f} | {r["WorstCase"]}, {r["WorstCorner"]} | {r["FastTestedMax_ns"]:.3f} |')
    lines+=['', '![Observed timing comparison](../Documentation/TimingResults/timing_comparison.png)', '']
    for device,family in flow.DEVICES.items():
        rows=[r for r in designs if r['Device']==device]
        best=min(rows,key=lambda r:r['SlowTestedMax_ns'])
        worst=max(rows,key=lambda r:r['SlowTestedMax_ns'])
        lines.append(f'For {family}, **{best["Topology"]}** has the smallest tested slow-corner maximum '
                     f'({best["SlowTestedMax_ns"]:.3f} ns); {worst["Topology"]} has the largest '
                     f'({worst["SlowTestedMax_ns"]:.3f} ns). This ranking applies to this fit and stimulus set.')
        lines.append('')
    lines += [
        '### Draft-pair results on the intended topology', '',
        '| Pair | Topology | Cyclone IV slow max (ns) | Arria II slow max (ns) |',
        '| --- | --- | ---: | ---: |']
    for pair in PAIR_NAMES:
        topology='CarrySkip' if pair.startswith('CS') else 'KoggeStone'
        values=[max(r['LastEvent_ns'] for r in pairs if r['Device']==device and r['Topology']==topology and r['Case']==pair and r['Corner'].startswith('slow')) for device in flow.DEVICES]
        lines.append(f'| {pair} | {topology} | {values[0]:.3f} | {values[1]:.3f} |')
    lines+=['', '![Timing pair comparison](../Documentation/TimingResults/timing_pairs.png)', '',
        'CarrySkip CS2 removes the low-bit carry generated by CS1. Its falling transition '
        'must wait for both reconvergent ripple/skip contributions to settle in the implemented '
        'OR network, which helps explain why the reverse transition can be slower. '
        'The fitted results, including I/O and routing, determine the actual ranking; logical '
        'prefix depth alone does not. A pair named KS can also reveal a slow transition on '
        'another architecture because all seven pairs were applied to every implementation.', '',
        'The workbook and pair CSV retain S, Cout and Ovfl delays separately at every corner, '
        'including cross-architecture application of all seven pairs. The graphs below show '
        'the slowest matching CarrySkip and KoggeStone draft-pair transitions across the two devices.', '',
        '![CarrySkip waveform](../Documentation/TimingResults/carryskip_worst_pair.png)', '',
        '![KoggeStone waveform](../Documentation/TimingResults/koggestone_worst_pair.png)', '',
        '### Reproducibility, tool messages and contributions', '',
        'Build and simulation products are excluded by `.gitignore` under `.timing-build/`. '
        'The tracked workflow scripts, testbench, CSV results, Excel workbook, figures, and this report '
        'are the handoff. The original RTL and existing testbench were not modified. '
        '`validation.json` records source/vector manifests and result/waveform hashes.', '',
        'Quartus reports automatic/incomplete pin assignments because no board pinout was supplied; '
        'these results use its fitted locations. The optional LogicLock feature is unavailable '
        'under the installed license, but all fits completed. Quartus also flags unspecified '
        'uncertainty on the virtual clock: no clock jitter margin is modeled, and static slack '
        'is not being presented as an operating-frequency guarantee. ModelSim reports that some designs '
        'exceed its recommended Starter capacity; this is a runtime-performance message, and the '
        'simulations completed with zero errors. Tool timestamps use the execution host clock; '
        'the report date uses UTC.', '',
        'The user explicitly authorized compilation and expanded the original vector-only task. '
        'The AI agent wrote the timing workflow, ran the tools, checked the results, and generated '
        'the workbook/figures/report. Arad supplied the final target part numbers and requested the '
        'learning workflow; no personal timing validation by Arad is claimed. The earlier task '
        'restrictions and “not run” statements describe the initial vector handoff, not this extension.', '']
    path=ROOT/'TeamNotes/arad-report.md'
    original=path.read_text(encoding='utf-8').split('<!-- COMPILED_TIMING_RESULTS -->')[0].rstrip()
    path.write_text(original+'\n\n<!-- COMPILED_TIMING_RESULTS -->\n'+'\n'.join(lines),encoding='utf-8')


def main():
    OUT.mkdir(parents=True,exist_ok=True)
    vectors,details,corners,pairs,designs,evidence=collect()
    for name,rows in [('design_summary.csv',designs),('corner_summary.csv',corners),
                      ('timing_pairs.csv',pairs),('measurements.csv',details),('vectors.csv',vectors)]:
        save_csv(name,rows)
    make_figures(designs,pairs)
    make_workbook({'Design summary':designs,'Corners':corners,'Timing pairs':pairs,
                   'Vectors':vectors,'All measurements':details,'Validation':evidence})
    validation={'report_date_utc':REPORT_DATE,'fits':len(designs),'simulations':len(corners),
                'passed_checks':len(details),'failures':0,'all_VCD_checks_pass':True,
                'runs':evidence,'manifests':[json.loads((BUILD/f'{r["Device"]}_{r["Topology"]}'/'manifest.json').read_text()) for r in designs]}
    (OUT/'validation.json').write_text(json.dumps(validation,indent=2)+'\n')
    update_report(designs,pairs)
    print(f'Created {OUT}: {len(designs)} fits, {len(corners)} simulations, {len(details)} passing checks')


if __name__=='__main__':
    main()
