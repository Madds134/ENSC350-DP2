"""Draw a timing diagram from a ModelSim VCD file with Matplotlib.

Usage examples (run from the Simulation folder):
    python plot_waves.py AdderExperiment_Ripple.vcd
    python plot_waves.py AdderExperiment_Ripple.vcd --meas 3 5 -o Ripple_meas3-5.svg
    python plot_waves.py AdderExperiment_Ripple.vcd --start 20 --end 60 --signals TB_A TB_S TB_Cout
    python plot_waves.py AdderExperiment_Ripple.vcd --meas 4 4 --timing -o Measurement_Timing.svg

Produce the VCD by adding these lines to a ModelSim .do script:
    vcd file <name>.vcd
    vcd add -r *
    run -all
    vcd flush
"""
import argparse
import re
from collections import defaultdict

import matplotlib.pyplot as plt
from matplotlib.patches import Polygon, Rectangle

DEFAULT_SIGNALS = [
    "TB_Measurement_Index",
    "TB_A", "TB_B", "TB_Cin",
    "TB_S_expected", "TB_Cout_expected", "TB_Ovfl_expected",
    "TB_S", "TB_Cout", "TB_Ovfl",
]
UNKNOWN_COLOUR = "#d62728"
LINE_COLOUR = "#1f4e79"


def read_vcd(path, scope=None):
    """Return ({signal: [(time_ps, bitstring), ...]}, {signal: width}, end_ps) for one scope.

    ModelSim writes each bit of a vector as its own $var ("TB_A [63]"), so the
    bits are reassembled into one bit string per signal, MSB first.
    """
    with open(path) as f:
        text = f.read()
    header, _, body = text.partition("$enddefinitions")

    scale = re.search(r"\$timescale\s+(\d+)\s*(\w+)", header)
    to_ps = int(scale.group(1)) * {"fs": 1e-3, "ps": 1, "ns": 1e3, "us": 1e6}[scale.group(2)]

    # Map each VCD id code to the (signal, bit) positions it drives in the chosen scope.
    targets = defaultdict(list)
    widths = defaultdict(int)
    stack = []
    for line in header.splitlines():
        tok = line.split()
        if not tok:
            continue
        if tok[0] == "$scope":
            stack.append(tok[2])
        elif tok[0] == "$upscope":
            stack.pop()
        elif tok[0] == "$var":
            if scope is None:
                scope = stack[0]
            if stack != [scope]:
                continue                      # skip signals inside the DUT
            width, code, name = int(tok[2]), tok[3], tok[4]
            bit = None
            if len(tok) > 5 and tok[5].startswith("["):
                bit = int(tok[5].strip("[]"))
            targets[code].append((name, bit, width))
            widths[name] = max(widths[name], (bit + 1) if bit is not None else width)

    bits = {name: ["x"] * w for name, w in widths.items()}
    history = defaultdict(list)

    def commit(time):
        for name, b in bits.items():
            value = "".join(reversed(b))      # MSB first
            if not history[name] or history[name][-1][1] != value:
                history[name].append((time, value))

    time = 0
    for tok in body.split():
        c = tok[0]
        if c == "#":
            commit(time)
            time = int(tok[1:]) * to_ps
        elif c in "bB":
            pending = tok[1:].lower()
        elif c == "$":
            continue
        elif c in "01xzuwlh-":
            for name, bit, _ in targets.get(tok[1:], []):
                bits[name][bit or 0] = c
        else:                                   # id code that follows a b-vector
            for name, bit, width in targets.get(tok, []):
                v = pending.rjust(width, pending[0] if pending[0] in "xz" else "0")
                bits[name] = list(reversed(v[-width:]))
    commit(time)
    return dict(history), dict(widths), time


def fmt(value, decimal):
    """Bit string -> display text: hex (or decimal), 'X' if unknown, 'Z' if floating."""
    if set(value) <= {"0", "1"}:
        n = int(value, 2)
        return str(n) if decimal else f"{n:0{(len(value) + 3) // 4}X}"
    return "Z" if set(value) == {"z"} else "X"


def segments(changes, t0, t1):
    """Yield (start, end, value) pieces of a signal's history clipped to [t0, t1]."""
    for i, (t, v) in enumerate(changes):
        end = changes[i + 1][0] if i + 1 < len(changes) else t1
        s, e = max(t, t0), min(end, t1)
        if e > s:
            yield s, e, v


def measurement_spans(history, end_ps):
    """[(index, start_ps, end_ps), ...] for every measurement, from TB_Measurement_Index."""
    idx = [(t, int(v, 2)) for t, v in history.get("TB_Measurement_Index", []) if set(v) <= {"0", "1"}]
    spans = []
    for i, (t, n) in enumerate(idx):
        end = idx[i + 1][0] if i + 1 < len(idx) else end_ps
        if end <= t and spans:                  # VCD stops at the last change:
            end = t + (spans[-1][2] - spans[-1][1])   # assume equal-length measurements
        spans.append((n, t, end))
    return spans


def value_at(changes, t):
    """Value of a signal at time t (the last change at or before t)."""
    v = changes[0][1]
    for when, value in changes:
        if when > t:
            break
        v = value
    return v


def annotate_timing(ax, history, spans, t0, t1, y):
    """Mark PreStimTime, PostStimTime and the compare point for each measurement in view."""
    stim = [t for t, _ in history["TB_A"]]
    for _, s, e in spans:
        if s < t0 or e > t1:
            continue
        applied = next((t for t in stim if s < t <= e), None)            # X -> stimulus
        if applied is None:
            continue
        for a, b, text in ((s, applied, "PreStimTime"), (applied, e, "PostStimTime")):
            ax.annotate("", xy=(a, y), xytext=(b, y),
                        arrowprops=dict(arrowstyle="<->", lw=0.9, shrinkA=0, shrinkB=0))
            ax.text((a + b) / 2, y + 0.12, f"{text}\n{(b - a) / 1000:g} ns",
                    ha="center", va="bottom", fontsize=7.5)
        ax.axvline(e, color="black", lw=0.9, zorder=0)
        ax.text(e, y + 0.55, "compare +\nreport", ha="right", va="bottom", fontsize=7.5)


CHECKED = [("TB_S", "TB_S_expected"), ("TB_Cout", "TB_Cout_expected"), ("TB_Ovfl", "TB_Ovfl_expected")]


def mark_failures(ax, history, spans, signals, t0, t1):
    """Outline, in red, every plotted output that differs from its expected value at the compare point."""
    rows = len(signals)
    for n, s, e in spans:
        if s < t0 or e > t1:
            continue
        failed = False
        for actual, expected in CHECKED:
            if actual not in signals or expected not in history:
                continue
            if value_at(history[actual], e - 1) != value_at(history[expected], e - 1):
                failed = True
                y = rows - 1 - signals.index(actual)
                ax.add_patch(Rectangle((s, y + 0.05), e - s, 0.9, fill=False,
                                       edgecolor=UNKNOWN_COLOUR, lw=2.0, zorder=5))
        if failed:
            # Label the measurement once: in the index row if shown, else just above the plot.
            y = rows - 1 - signals.index("TB_Measurement_Index") + 0.5 if "TB_Measurement_Index" in signals else rows + 0.05
            ax.text(e - (e - s) * 0.03, y, "FAIL", ha="right", va="center", color=UNKNOWN_COLOUR,
                    fontsize=8, fontweight="bold", zorder=6, clip_on=False)


def plot(history, widths, signals, t0, t1, decimal, title, out, spans, timing=False, check=True):
    rows = len(signals)
    fig, ax = plt.subplots(figsize=(11, 0.55 * rows + (1.6 if timing else 0.9)))
    span = t1 - t0
    slant = span * 0.004                      # width of a bus transition
    pts_per_ps = fig.get_figwidth() * 0.80 * 72 / span

    for r, name in enumerate(signals):
        y = rows - 1 - r                      # first signal at the top
        lo, hi, mid = y + 0.15, y + 0.85, y + 0.5
        for s, e, v in segments(history[name], t0, t1):
            unknown = not set(v) <= {"0", "1"}
            if widths[name] == 1:
                if unknown:
                    ax.add_patch(Rectangle((s, lo), e - s, hi - lo, color=UNKNOWN_COLOUR, alpha=0.35, lw=0))
                    ax.plot([s, e], [mid, mid], color=UNKNOWN_COLOUR, lw=1.2)
                else:
                    level = hi if v == "1" else lo
                    ax.plot([s, e], [level, level], color=LINE_COLOUR, lw=1.4)
                    ax.plot([s, s], [lo, hi], color=LINE_COLOUR, lw=0.6, alpha=0.5)
            else:
                d = min(slant, (e - s) / 2)
                shape = [(s, mid), (s + d, hi), (e - d, hi), (e, mid), (e - d, lo), (s + d, lo)]
                ax.add_patch(Polygon(shape, closed=True,
                                     facecolor=UNKNOWN_COLOUR if unknown else "white",
                                     alpha=0.35 if unknown else 1.0,
                                     edgecolor=UNKNOWN_COLOUR if unknown else LINE_COLOUR, lw=1.0))
                label = fmt(v, name in decimal)
                room = int((e - s) * pts_per_ps / 4.6)      # characters that fit at 7.5 pt
                if room >= 2:
                    if len(label) > room:
                        label = label[:room - 1] + "…"
                    ax.text((s + e) / 2, mid, label, ha="center", va="center",
                            fontsize=7.5, family="monospace")

    # Dashed line at the start of each measurement, if the index is available.
    for t, _ in history.get("TB_Measurement_Index", []):
        if t0 < t < t1:
            ax.axvline(t, color="grey", ls="--", lw=0.6, zorder=0)

    if check:
        mark_failures(ax, history, spans, signals, t0, t1)
    if timing:
        annotate_timing(ax, history, spans, t0, t1, rows + 0.25)
    ax.set_xlim(t0, t1)
    ax.set_ylim(-0.2, rows + (1.4 if timing else 0))
    ax.set_yticks([rows - 1 - r + 0.5 for r in range(rows)])
    ax.set_yticklabels(signals, family="monospace", fontsize=9)
    ax.tick_params(axis="y", length=0)
    ticks = ax.get_xticks()
    ax.set_xticks(ticks)
    ax.set_xticklabels([f"{t / 1000:g}" for t in ticks])
    ax.set_xlim(t0, t1)
    ax.set_xlabel("time (ns)")
    for side in ("top", "right", "left"):
        ax.spines[side].set_visible(False)
    if title:
        ax.set_title(title, fontsize=10)
    fig.tight_layout()
    fig.savefig(out, dpi=200)                 # dpi only matters for .png
    print(f"wrote {out}")


def measurement_window(spans, first, last):
    """Time range (ps) covering measurements first..last."""
    by_index = {n: (s, e) for n, s, e in spans}
    return by_index[first][0], by_index[last][1]


def main():
    p = argparse.ArgumentParser(description="Timing diagram from a ModelSim VCD file.")
    p.add_argument("vcd")
    p.add_argument("-o", "--out", help="output file (.svg/.pdf for the report, .png to preview)")
    p.add_argument("--signals", nargs="+", default=DEFAULT_SIGNALS)
    p.add_argument("--decimal", nargs="+", default=["TB_Measurement_Index"],
                   help="signals shown in decimal instead of hex")
    p.add_argument("--meas", nargs=2, type=int, metavar=("FIRST", "LAST"),
                   help="plot measurements FIRST..LAST")
    p.add_argument("--start", type=float, help="start time in ns")
    p.add_argument("--end", type=float, help="end time in ns")
    p.add_argument("--title")
    p.add_argument("--timing", action="store_true",
                   help="mark PreStimTime, PostStimTime and the compare point (best with 1-2 measurements)")
    p.add_argument("--no-check", action="store_true",
                   help="don't outline outputs that differ from their expected values")
    a = p.parse_args()

    history, widths, end_ps = read_vcd(a.vcd)
    missing = [s for s in a.signals if s not in history]
    if missing:
        raise SystemExit(f"not in VCD: {missing}. Available: {sorted(history)}")

    spans = measurement_spans(history, end_ps)
    if a.meas:
        t0, t1 = measurement_window(spans, *a.meas)
    else:
        t0, t1 = 0, (spans[-1][2] if spans else end_ps)
    if a.start is not None:
        t0 = a.start * 1000
    if a.end is not None:
        t1 = a.end * 1000
    out = a.out or a.vcd.rsplit(".", 1)[0] + ".svg"
    plot(history, widths, a.signals, t0, t1, set(a.decimal), a.title, out, spans,
         timing=a.timing, check=not a.no_check)


if __name__ == "__main__":
    main()
