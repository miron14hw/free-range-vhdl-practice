# Free Range VHDL practice

Work through Free Range VHDL by B. Mealy and F. Tappero, starting at chapter 4 and continuing through chapter 12. 
## Learning workflow

1. Read the exercise and write down the required inputs, outputs, and behavior.
2. Write my own VHDL design and a testbench that checks expected outputs with assertions.
3. Compile and simulate; investigate assertion failures and inspect the waveform in GTKWave.

## Folder layout

Create folders as you reach each exercise:

```text
free_code_range/
                chapter04/
                          exercise01/
                                    README.md       # Exercise reference, requirements, expected results, findings
                                    src/            # design files
                                    tb/             # testbench files
                                    build/          # Generated files, ignored by Git
```

Use the same structure for subsequent chapters. Chapters 4-9 contain named exercise sections; chapters 10-12 cover data objects, loops, and standard circuits. Choose practice tasks from those chapters when you reach them.


## Reference

These exercises follow **Free Range VHDL** by Bryan Mealy and
Fabrizio Tappero, starting from chapter 4.

- [Book repository and download](https://github.com/fabriziotappero/Free-Range-VHDL-book)
- Book license: [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)

This repository contains my practice implementations and testbenches.
Requirements: GHDL for compilation and simulation, and GTKWave for waveform viewing.
