#!/usr/bin/env python3
"""Generate/check adder vectors (8/16/32/64 bits); Python 3 standard library only."""

import argparse
import random
import re
from pathlib import Path

BITS = 64
NAMES = ("uniform", "long-propagate", "near-overflow", "boundary-stop")
WEIGHTS = (8, 5, 4, 3)  # Out of 20: 40%, 25%, 20%, 15%.


def expected(a, b, cin, bits=BITS):
    """Unsigned carry and signed overflow are different outputs."""
    total = a + b + cin
    s = total & ((1 << bits) - 1)
    sign = bits - 1
    overflow = int((a >> sign) == (b >> sign) and (s >> sign) != (a >> sign))
    return s, total >> bits, overflow


def format_vector(a, b, cin, bits=BITS):
    s, cout, overflow = expected(a, b, cin, bits)
    digits = bits // 4
    return f"{a:0{digits}X} {b:0{digits}X} {cin} {s:0{digits}X} {cout} {overflow}"


def category_counts(count):
    """Largest-remainder rounding keeps any requested count exact."""
    counts = [count * weight // 20 for weight in WEIGHTS]
    order = sorted(range(4), key=lambda i: -(count * WEIGHTS[i] % 20))
    for i in order[:count - sum(counts)]:
        counts[i] += 1
    return counts


def carry_run(rng, start, stop, bits=BITS):
    """Generate at start, propagate through stop-1, kill at stop (if <bits)."""
    mask = (1 << bits) - 1
    a, b = rng.getrandbits(bits), rng.getrandbits(bits)
    run = ((1 << stop) - 1) ^ ((1 << (start + 1)) - 1)
    b = (b & (mask ^ run)) | ((a ^ mask) & run)
    a |= 1 << start
    b |= 1 << start
    if stop < bits:
        a &= mask ^ (1 << stop)
        b &= mask ^ (1 << stop)
    return a, b, rng.getrandbits(1)


def generate(seed, count, bits=BITS):
    rng = random.Random(seed)
    rows = []
    mask, sign = (1 << bits) - 1, 1 << (bits - 1)
    boundaries = [1, 2, *range(4, bits + 1, 4)]
    rng.shuffle(boundaries)
    anchors = (sign - 1, sign, mask)
    radius = bits // 4  # Scale low carry origins and near-limit offsets with N.
    for category, size in enumerate(category_counts(count)):
        for i in range(size):
            if category == 0:
                inputs = rng.getrandbits(bits), rng.getrandbits(bits), rng.getrandbits(1)
            elif category == 1:
                inputs = carry_run(rng, rng.randrange(radius), bits, bits)
            elif category == 2:
                a = (anchors[i % 3] + rng.randint(-radius, radius)) & mask
                # Alternate small signed increments and a second near-limit operand.
                b = (rng.randint(-2*radius, 2*radius) if i % 2 == 0 else
                     rng.choice(anchors) + rng.randint(-radius, radius)) & mask
                inputs = a, b, rng.getrandbits(1)
            else:
                stop = boundaries[i % len(boundaries)]
                inputs = carry_run(rng, rng.randrange(stop), stop, bits)
            rows.append((NAMES[category], inputs))
    rng.shuffle(rows)
    return rows


def timing_pairs(bits=BITS):
    """Order matches the report; each tuple is (name, setup, trigger)."""
    mask, sign = (1 << bits) - 1, 1 << (bits - 1)
    top_block = 0xF << (bits - 4)
    return [
        ("CS1", (sign - 1, 0, 0), (sign - 1, 1, 0)),
        ("CS2", (sign - 1, 1, 0), (sign - 1, 0, 0)),
        ("CS3", (top_block, 0, 0), (top_block, 1 << (bits - 4), 0)),
        ("KS1", (mask, 0, 0), (mask, 0, 1)),
        ("KS2", (mask, 0, 1), (mask, 0, 0)),
        ("KS3", (mask, 0, 0), (mask, 1, 0)),
        ("KS4", (mask ^ 1, 0, 1), (mask, 0, 1)),
    ]


def write_vectors(path, inputs, bits=BITS):
    # Explicit ASCII + LF keeps bytes identical on Windows and Unix.
    with path.open("w", encoding="ascii", newline="\n") as stream:
        for values in inputs:
            stream.write(format_vector(*values, bits=bits) + "\n")


def check_file(path, bits=BITS):
    digits = bits // 4
    hex_field = rf"[0-9A-F]{{{digits}}}"
    pattern = re.compile(rf"{hex_field}[ \t]+{hex_field}[ \t]+[01][ \t]+{hex_field}[ \t]+[01][ \t]+[01]")
    passed = mismatches = malformed = count = 0
    with path.open(encoding="ascii") as stream:
        for count, line in enumerate(stream, 1):
            if not pattern.fullmatch(line.rstrip("\r\n")):
                print(f"{path}:{count}: MALFORMED (expected six fields, uppercase {digits}-digit hex)")
                malformed += 1
                continue
            a, b, cin, s, cout, overflow = line.split()
            actual = int(s, 16), int(cout), int(overflow)
            wanted = expected(int(a, 16), int(b, 16), int(cin), bits)
            if actual != wanted:
                print(f"{path}:{count}: MISMATCH: file S={actual[0]:0{digits}X} "
                      f"Cout={actual[1]} Ovfl={actual[2]}; "
                      f"recomputed S={wanted[0]:0{digits}X} Cout={wanted[1]} Ovfl={wanted[2]}")
                mismatches += 1
            else:
                passed += 1
    if count == 0:
        print(f"{path}: EMPTY (expected at least one vector)")
    print(f"{path}: {count} lines, {passed} pass, {mismatches} mismatches, {malformed} malformed")
    return int(bool(mismatches or malformed or count == 0))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--out", type=Path, help="write random vectors")
    mode.add_argument("--check", type=Path, help="check an existing vector file")
    mode.add_argument("--timing-out", type=Path, help="write the seven fixed timing pairs")
    parser.add_argument("--seed", type=int, default=350)
    parser.add_argument("--count", type=int, default=500)
    parser.add_argument("--width", type=int, choices=(8, 16, 32, 64), default=64)
    args = parser.parse_args()
    if args.count < 1:
        parser.error("--count must be positive")
    try:
        if args.check is not None:
            return check_file(args.check, args.width)
        if args.timing_out is not None:
            write_vectors(args.timing_out, (v for _, setup, trigger in timing_pairs(args.width)
                                           for v in (setup, trigger)), args.width)
            print(f"Wrote 7 timing pairs (14 vectors) to {args.timing_out}")
        else:
            rows = generate(args.seed, args.count, args.width)
            write_vectors(args.out, (values for _, values in rows), args.width)
            print(f"seed={args.seed} count={args.count} width={args.width} out={args.out}")
            print("mix: " + ", ".join(f"{name}={n}" for name, n in
                                      zip(NAMES, category_counts(args.count))))
    except (OSError, UnicodeError) as error:
        parser.exit(2, f"error: {error}\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
