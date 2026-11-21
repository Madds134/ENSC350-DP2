"""Validate the 8/16/32/64-bit timing sweep and publish timing-only results."""
import csv
import hashlib
import json
import re
from datetime import datetime, timezone

import CreateResults as base
import RunTiming as flow
from openpyxl import Workbook, load_workbook
from openpyxl.chart import ScatterChart, Series, Reference
from openpyxl.drawing.image import Image
from openpyxl.styles import Font, PatternFill

WIDTHS = (8, 16, 32, 64)
OUT = base.OUT / 'WidthSweep'
COLORS = ['#4C78A8', '#E45756', '#B279A2', '#F2A541', '#59A14F', '#17A2A4', '#626262']
START = '<!-- WIDTH_TIMING_RESULTS -->'
END = '<!-- END_WIDTH_TIMING_RESULTS -->'


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def read_csv(path):
    with path.open(newline='', encoding='utf-8') as stream:
        return list(csv.DictReader(stream))


def width_vectors(width):
    gen = flow.GENERATOR
    randoms = gen['generate'](350, 500, width)
    pairs = gen['timing_pairs'](width)
    inputs = [v for _, v in randoms] + [v for _, setup, trigger in pairs for v in (setup, trigger)]
    expected = [gen['format_vector'](*v, bits=width) for v in inputs]
    stored = [line for path in flow.vector_paths(width) for line in path.read_text().splitlines()]
    if stored != expected:
        raise ValueError(f'N={width}: regenerate the width-specific vectors')
    rows = []
    for index, line in enumerate(expected, 1):
        a, b, cin, s, cout, ovfl = line.split()
        role = 'random' if index <= 500 else ('setup' if index % 2 else 'trigger')
        case = f'R{index:03}' if index <= 500 else base.PAIR_NAMES[(index - 501) // 2]
        rows.append(dict(Width=width, Index=index, Case=case, Role=role,
                         Category=randoms[index-1][0] if index <= 500 else 'timing pair',
                         A=a, B=b, Cin=int(cin), ExpectedS=s,
                         ExpectedCout=int(cout), ExpectedOvfl=int(ovfl)))
    return expected, rows


def collect():
    vectors, details, corners, pairs, designs, evidence, manifests = [], [], [], [], [], [], []
    for width in WIDTHS:
        expected, vector_rows = width_vectors(width)
        vectors.extend(vector_rows)
        for device, family in flow.DEVICES.items():
            for topology in flow.SOURCES:
                folder = flow.experiment_folder(device, topology, width)
                if not flow.reusable(device, topology, width):
                    raise ValueError(f'Incomplete or stale run: {folder}; run RunTiming.py first')
                manifest = json.loads((folder / 'manifest.json').read_text())
                if manifest['device'] != device or manifest['topology'] != topology:
                    raise ValueError(f'Mismatched manifest: {folder}')
                # Independently check that Quartus actually fitted the requested bus width.
                fit = (folder / 'output_files/timing.fit.summary').read_text()
                pins = re.search(r'Total pins\s*:\s*([\d,]+)', fit)
                if ('Successful' not in fit or device not in fit or not pins
                        or int(pins[1].replace(',', '')) != 3 * width + 3):
                    raise ValueError(f'Wrong device, failed fit, or incorrect fitted width: {folder}')
                manifests.append(dict(manifest, width=width, fit_summary_sha256=sha(folder / 'output_files/timing.fit.summary')))
                design_corners = []
                for corner in base.CORNERS:
                    simdir = folder / corner
                    if (simdir / 'vectors.tvs').read_text().splitlines() != expected:
                        raise ValueError(f'Wrong simulation inputs: {simdir}')
                    named = simdir / f'vectors_N{width}.tvs'
                    if width != 64 and (not named.exists() or named.read_text().splitlines() != expected):
                        raise ValueError(f'Wrong named vector file: {simdir}')
                    raw = read_csv(simdir / 'measurements.csv')
                    if len(raw) != 514:
                        raise ValueError(f'Expected 514 measured rows: {simdir}')
                    base.check_vcd(simdir / 'timing.vcd', raw)
                    rows = []
                    for index, (measurement, vector) in enumerate(zip(raw, vector_rows), 1):
                        actual = [measurement[key] for key in ['A', 'B', 'Cin', 'S', 'Cout', 'Ovfl']]
                        if (int(measurement['index']) != index or measurement['pass'] != 'true'
                                or actual != expected[index-1].split()):
                            raise ValueError(f'Incorrect vector/output: {simdir}, row {index}')
                        delays = {}
                        for signal in base.OUTPUTS:
                            ps = int(measurement[signal + '_ps'])
                            if not -1 <= ps < 200000:
                                raise ValueError(f'Invalid delay/hold interval: {simdir}, row {index}')
                            delays[signal + '_ns'] = None if ps == -1 else ps / 1000
                        events = [v for v in delays.values() if v is not None]
                        row = dict(Family=family, Device=device, Topology=topology, Width=width,
                                   Corner=corner, Index=index, Case=vector['Case'], Role=vector['Role'],
                                   Category=vector['Category'], **delays,
                                   LastEvent_ns=max(events) if events else None, Pass=True)
                        rows.append(row)
                        if row['Role'] == 'trigger':
                            pairs.append(row.copy())
                    details.extend(rows)
                    tested = [r for r in rows if r['Role'] != 'setup' and r['LastEvent_ns'] is not None]
                    worst = max(tested, key=lambda r: r['LastEvent_ns'])
                    summary = dict(Family=family, Device=device, Topology=topology, Width=width,
                                   Corner=corner,
                                   RandomMax_ns=max(r['LastEvent_ns'] for r in tested if r['Role'] == 'random'),
                                   PairMax_ns=max(r['LastEvent_ns'] for r in tested if r['Role'] == 'trigger'),
                                   TestedMax_ns=worst['LastEvent_ns'], WorstCase=worst['Case'],
                                   Checks=len(rows), Failures=0)
                    corners.append(summary)
                    design_corners.append(summary)
                    evidence.append(dict(Device=device, Topology=topology, Width=width, Corner=corner,
                                         MeasurementSHA256=sha(simdir / 'measurements.csv'),
                                         WaveformSHA256=sha(simdir / 'timing.vcd'),
                                         SDF_annotated=True, VCD_crosscheck=True, FittedWidthVerified=True))
                slow = [r for r in design_corners if r['Corner'].startswith('slow')]
                worst = max(slow, key=lambda r: r['TestedMax_ns'])
                designs.append(dict(Family=family, Device=device, Topology=topology, Width=width,
                                    SlowRandomMax_ns=max(r['RandomMax_ns'] for r in slow),
                                    SlowPairMax_ns=max(r['PairMax_ns'] for r in slow),
                                    SlowTestedMax_ns=worst['TestedMax_ns'], WorstCase=worst['WorstCase'],
                                    WorstCorner=worst['Corner'], FastTestedMax_ns=design_corners[2]['TestedMax_ns'],
                                    Checks=1542, Failures=0))
                print('VERIFIED', folder.name, flush=True)
    # The bonus must preserve the published 64-bit timing baseline exactly.
    baseline = {(r['Device'], r['Topology']): r for r in read_csv(base.OUT / 'design_summary.csv')}
    for row in designs:
        if row['Width'] == 64:
            old = baseline[row['Device'], row['Topology']]
            for key in ('SlowRandomMax_ns', 'SlowPairMax_ns', 'SlowTestedMax_ns', 'FastTestedMax_ns'):
                if float(old[key]) != row[key]:
                    raise ValueError(f'64-bit baseline changed: {row["Device"]} {row["Topology"]} {key}')
    return vectors, details, corners, pairs, designs, evidence, manifests


def make_comparison(designs):
    lookup = {(r['Device'], r['Topology'], r['Width']): r['SlowTestedMax_ns'] for r in designs}
    return [dict(Family=family, Device=device, Topology=topology,
                 **{f'N{width}_ns': lookup[device, topology, width] for width in WIDTHS})
            for device, family in flow.DEVICES.items() for topology in flow.SOURCES]


def save_csv(name, rows):
    with (OUT / name).open('w', newline='', encoding='utf-8') as stream:
        writer = csv.DictWriter(stream, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)


def make_figure(comparison):
    plt = base.plt
    plt.rcParams.update({'font.size': 10, 'axes.spines.top': False, 'axes.spines.right': False})
    fig, axes = plt.subplots(1, 2, figsize=(12, 5.6), sharey=True)
    for ax, (device, family) in zip(axes, flow.DEVICES.items()):
        rows = [r for r in comparison if r['Device'] == device]
        for row, color in zip(rows, COLORS):
            ax.plot(WIDTHS, [row[f'N{w}_ns'] for w in WIDTHS], marker='o', markersize=5,
                    linewidth=2, color=color, label=row['Topology'])
        ax.set_title(f'{family}\n{device}', fontsize=11)
        ax.set_xscale('log', base=2)
        ax.set_xticks(WIDTHS, [str(w) for w in WIDTHS])
        ax.set_xlabel('Operand width N (bits; doubling steps)')
        ax.set_ylim(bottom=0)
        ax.grid(alpha=.2)
    axes[0].set_ylabel('Largest observed slow-corner settling delay (ns)')
    fig.suptitle('Timing versus adder width\n500 random transitions + 7 pair triggers per width; I/O included', fontsize=13)
    handles, labels = axes[0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='lower center', ncol=4, frameon=False, bbox_to_anchor=(.5, .01))
    fig.tight_layout(rect=(0, .12, 1, .90))
    for ext in ('png', 'svg'):
        fig.savefig(OUT / f'timing_vs_width.{ext}', dpi=180, bbox_inches='tight')
    base.clean_svg(OUT / 'timing_vs_width.svg')
    plt.close(fig)


def make_workbook(tables):
    wb = Workbook()
    ws = wb.active
    ws.title = 'Read me'
    ws.append(['Item', 'Explanation'])
    notes = [
        ('Scope', 'Timing only: 8, 16, 32, 64 bits; seven topologies; two devices; three corners.'),
        ('Metric', 'Time to last S/Cout/Ovfl event including glitches, input/output buffers and routing; ns.'),
        ('Comparison', 'Maximum over slow 0 C and slow 85 C, using maximum SDF selection. Fast 0 C uses minimum SDF.'),
        ('Stimulus', 'Seed 350 at each width; 500 mixed random vectors and 7 setup/trigger pairs (514 rows).'),
        ('Population', '500 random transitions + 7 triggers; setup rows checked but excluded from maxima. Blank delay means no event.'),
        ('Width reconstruction', 'Width-specific sign, carry boundaries and upper 4-bit block; never truncate the 64-bit files.'),
        ('Fit', 'Original generic RTL, fitter seed 1, automatic physical pin placement, 2.5 V I/O, 200 ns hold.'),
        ('Tools', 'Windows: Quartus Prime Lite 20.1.1 build 720; ModelSim Intel FPGA Starter 2020.1. Linux commands in README.'),
        ('Validation', '56 successful fits, 168 simulations, 86,352 passing checks; each delay checked against VCD.'),
        ('Baseline', 'Published N=64 measurements reused without changing their values; 42 new fits and 126 new simulations.'),
        ('Full measurements', 'measurements.csv contains all 86,352 checked rows; vectors.csv identifies the inputs by Width and Index.'),
        ('Limits', 'Observed maxima for this stimulus and fit, not exhaustive worst-case delays or Fmax. Lines join sampled widths only.'),
        ('Rebuild', 'python3 Simulation/Timing/RunTiming.py --width 8 16 32 64 --jobs 2 --reuse'),
        ('Analyze', 'python3 Simulation/Timing/CreateWidthResults.py'),
    ]
    for row in notes:
        ws.append(row)
    for name, rows in tables.items():
        ws = wb.create_sheet(name)
        ws.append(list(rows[0]))
        for row in rows:
            ws.append(list(row.values()))
    ws = wb.create_sheet('Charts')
    picture = Image(str(OUT / 'timing_vs_width.png'))
    factor = min(1, 1100 / picture.width)
    picture.width *= factor
    picture.height *= factor
    ws.add_image(picture, 'A1')
    data = wb.create_sheet('Chart data')
    data.append(['Width', *flow.SOURCES])
    for device in flow.DEVICES:
        for width in WIDTHS:
            data.append([width, *[next(r[f'N{width}_ns'] for r in tables['Width comparison']
                                      if r['Device'] == device and r['Topology'] == topology)
                                  for topology in flow.SOURCES]])
    for offset, (device, family) in enumerate(flow.DEVICES.items()):
        chart = ScatterChart()
        chart.title = f'{family} - {device}'
        chart.x_axis.title = 'N (bits)'
        chart.y_axis.title = 'Observed slow maximum (ns)'
        chart.scatterStyle = 'lineMarker'
        chart.width, chart.height = 28, 13
        start = 2 + offset * 4
        x = Reference(data, min_col=1, min_row=start, max_row=start+3)
        for col, (topology, color) in enumerate(zip(flow.SOURCES, COLORS), 2):
            series = Series(Reference(data, min_col=col, min_row=start, max_row=start+3), x, title=topology)
            series.graphicalProperties.line.solidFill = color.lstrip('#')
            series.marker.symbol = 'circle'
            series.marker.size = 5
            chart.series.append(series)
        ws.add_chart(chart, f'A{35 + offset * 28}')
    for ws in wb:
        if ws.title == 'Charts':
            continue
        ws.freeze_panes = 'A2'
        ws.auto_filter.ref = ws.dimensions
        for cell in ws[1]:
            cell.font = Font(color='FFFFFF', bold=True)
            cell.fill = PatternFill('solid', fgColor='245B85')
        for cells in ws.columns:
            length = max(len(str(c.value or '')) for c in cells)
            ws.column_dimensions[cells[0].column_letter].width = min(65, max(12, length+2))
            if cells[0].value.endswith('_ns'):
                for cell in cells[1:]:
                    cell.number_format = '0.000'
    path = OUT / 'AdderWidthTimingResults.xlsx'
    wb.save(path)
    check = load_workbook(path, read_only=True, data_only=True)
    for name, rows in tables.items():
        assert check[name].max_row == len(rows)+1
    check.close()


def update_report(comparison, designs):
    rows = []
    for row in comparison:
        values = ' | '.join(f'{row[f"N{w}_ns"]:.3f}' for w in WIDTHS)
        rows.append(f'| {row["Family"]} | {row["Topology"]} | {values} |')
    findings = []
    for device, family in flow.DEVICES.items():
        winners = [min((r for r in designs if r['Device'] == device and r['Width'] == w),
                       key=lambda r: r['SlowTestedMax_ns']) for w in WIDTHS]
        if len({r['Topology'] for r in winners}) == 1:
            findings.append(f'For {family}, **{winners[0]["Topology"]}** has the lowest observed maximum at all four widths; no change of the fastest topology was observed.')
        else:
            labels = ', '.join(f'N={r["Width"]}: **{r["Topology"]}** ({r["SlowTestedMax_ns"]:.3f} ns)' for r in winners)
            changes = [f'{a["Width"]} and {b["Width"]} bits' for a, b in zip(winners, winners[1:]) if a['Topology'] != b['Topology']]
            findings.append(f'For {family}, {labels}. The sampled winner changes between {"; ".join(changes)}; intermediate widths were not tested, so an exact break-point is not established.')
        # An example of changing relative performance even if the overall winner stays fixed.
        block = next(r for r in comparison if r['Device'] == device and r['Topology'] == 'BlockLookahead')
        kogge = next(r for r in comparison if r['Device'] == device and r['Topology'] == 'KoggeStone')
        differences = [block[f'N{w}_ns'] - kogge[f'N{w}_ns'] for w in WIDTHS]
        intervals = [f'{a}-{b}' for a, b, x, y in zip(WIDTHS, WIDTHS[1:], differences, differences[1:]) if x*y < 0]
        if intervals:
            findings.append(f'On {family}, the sampled ordering of BlockLookahead and KoggeStone reverses over the {" and ".join(intervals)} bit intervals. More widths would be needed to locate any exact break-point; this does not change the overall winner above.')
    section = f'''{START}
## Bonus: timing versus operand width

The timing-only extension compares **N = 8, 16, 32, 64** for all seven topologies on both devices. The 64-bit baseline below is retained exactly. The 42 additional fits and 126 additional post-fit simulations passed; including the baseline, **56 fits, 168 simulations and 86,352 vector checks** were validated, with every recorded delay cross-checked against its VCD waveform. Cost analysis is outside this bonus section.

Each width uses 500 seed-350 mixed vectors plus seven reconstructed setup/trigger pairs. Sign boundaries use bit N-1, full propagation uses N bits, and CS3 moves to the top four-bit block. CarrySkip has N/4 blocks (zero middle skip blocks at N=8); KoggeStone has log2(N) prefix stages. The same generic testbench reads `vectors_N<width>.tvs`. These powers of two also satisfy the recursive implementations and four-bit CarrySkip blocks.

The table and graph show the **largest observed settling delay in ns** across the two slow corners, using the 500 random transitions and seven pair triggers. The metric and tool settings match the baseline; setup transitions are excluded from maxima. Each width is fitted independently with seed 1 and automatic pins, so I/O and routing contribute. These samples do not prove exhaustive worst-case timing or a continuous trend; connecting lines are visual guides.

| Device family | Topology | 8 bits (ns) | 16 bits (ns) | 32 bits (ns) | 64 bits (ns) |
| --- | --- | ---: | ---: | ---: | ---: |
{chr(10).join(rows)}

![Observed timing versus operand width](../Documentation/TimingResults/WidthSweep/timing_vs_width.png)

{(chr(10)*2).join(findings)}

[Timing workbook with editable charts](../Documentation/TimingResults/WidthSweep/AdderWidthTimingResults.xlsx) · [Compact table CSV](../Documentation/TimingResults/WidthSweep/width_comparison.csv) · [Per-corner results](../Documentation/TimingResults/WidthSweep/corner_summary.csv) · [All measurements](../Documentation/TimingResults/WidthSweep/measurements.csv) · [Linux workflow and pair reconstruction](../Simulation/Timing/README.md#bonus-repeat-the-timing-experiment-at-several-widths)

The AI agent generalized the workflow, ran and validated the additional timing simulations on the installed Windows tools, and generated these results. The documented reproduction commands use Linux/Bash. No manual validation by Arad or cost work is claimed. Quartus and ModelSim build products remain ignored.
{END}'''
    path = flow.ROOT / 'TeamNotes/arad-report.md'
    report = path.read_text(encoding='utf-8')
    if START in report:
        before, rest = report.split(START, 1)
        _, after = rest.split(END, 1)
        report = before + section + after
    else:
        marker = '<!-- COMPILED_TIMING_RESULTS -->'
        if marker not in report:
            raise ValueError('Missing existing baseline report section')
        report = report.replace(marker, section + '\n\n' + marker, 1)
    path.write_text(report, encoding='utf-8', newline='\n')


def main():
    vectors, details, corners, pairs, designs, evidence, manifests = collect()
    assert (len(designs), len(corners), len(details), len(pairs)) == (56, 168, 86352, 1176)
    OUT.mkdir(parents=True, exist_ok=True)
    comparison = make_comparison(designs)
    tables = {'Width comparison': comparison, 'Design summary': designs, 'Corner summary': corners,
              'Timing pairs': pairs, 'Vectors': vectors, 'Validation': evidence}
    for name, rows in {**tables, 'Measurements': details}.items():
        save_csv(name.lower().replace(' ', '_') + '.csv', rows)
    (OUT / 'validation.json').write_text(json.dumps(dict(
        generated_utc=datetime.now(timezone.utc).isoformat(), widths=WIDTHS, fits=56,
        simulations=168, vector_checks=len(details), failures=0, baseline64_unchanged=True,
        metric='Last output event, I/O included; slow summary excludes setup rows',
        experiments=manifests, simulations_evidence=evidence), indent=2) + '\n', encoding='utf-8')
    make_figure(comparison)
    make_workbook(tables)
    update_report(comparison, designs)
    print(f'PASS: 56 fits, 168 simulations, {len(details):,} checks; results in {OUT}')


if __name__ == '__main__':
    main()
