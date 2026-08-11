# Brainfuck

Brainfuck is a real esoteric programming language: a Turing machine with
eight commands and a tape of bytes. This repository includes a real
Brainfuck source in `languages/brainfuck/hello.bf`, a genuine interpreter in
`tools/bf.py`, and CI jobs that execute it and verify the `Hello World!`
output (see `.github/workflows/languages.yml`).

## Instructions

| Command | Meaning                              |
|---------|--------------------------------------|
| `>`    | Move the tape pointer right          |
| `<`    | Move the tape pointer left           |
| `+`    | Increment the current cell           |
| `-`    | Decrement the current cell           |
| `.`    | Output the current cell as a char    |
| `,`    | Input a byte into the current cell   |
| `[`    | Jump past the matching `]` if cell is 0 |
| `]`    | Jump back to the matching `[` if cell is not 0 |

## Hello World

```brainfuck
++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.
```

## Running it

```sh
python3 tools/bf.py languages/brainfuck/hello.bf   # prints "Hello World!" from the .bf file
```
