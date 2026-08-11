#!/usr/bin/env python3
"""A minimal Brainfuck interpreter.

Usage:
    python3 tools/bf.py <file.bf>...
Each file is interpreted and its output printed, prefixed by the file name.
"""

import sys


def interpret(code: str, cells: int = 30000, stdin: str = "") -> str:
    tape = [0] * cells
    ptr = 0
    pc = 0
    in_ptr = 0
    out = []

    # Precompute matching brackets.
    jumps = {}
    stack = []
    for i, ch in enumerate(code):
        if ch == "[":
            stack.append(i)
        elif ch == "]":
            if not stack:
                raise ValueError("unmatched ] at " + str(i))
            j = stack.pop()
            jumps[i] = j
            jumps[j] = i
    if stack:
        raise ValueError("unmatched [ at " + str(stack[-1]))

    while pc < len(code):
        ch = code[pc]
        if ch == ">":
            ptr = (ptr + 1) % cells
        elif ch == "<":
            ptr = (ptr - 1) % cells
        elif ch == "+":
            tape[ptr] = (tape[ptr] + 1) % 256
        elif ch == "-":
            tape[ptr] = (tape[ptr] - 1) % 256
        elif ch == ".":
            out.append(chr(tape[ptr]))
        elif ch == ",":
            tape[ptr] = ord(stdin[in_ptr]) if in_ptr < len(stdin) else 0
            in_ptr += 1
        elif ch == "[" and tape[ptr] == 0:
            pc = jumps[pc]
        elif ch == "]" and tape[ptr] != 0:
            pc = jumps[pc]
        pc += 1
    return "".join(out)


def main(argv):
    if not argv:
        print(__doc__)
        return 1
    ok = True
    for path in argv:
        with open(path, "r", encoding="utf-8") as fh:
            code = fh.read()
        out = interpret(code)
        sys.stdout.write(path + ": " + out + "
")
        if "Hello World" not in out:
            ok = False
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
