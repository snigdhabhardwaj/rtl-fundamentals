


# Half Adder - RTL Design & Verification

A simple combinational circuit implementing a Half Adder in Verilog.

## Circuit Description
A Half Adder takes two 1-bit inputs and produces:
- **Sum** = A XOR B
- **Carry** = A AND B

## Files
- `half_adder.v` - RTL Design
- `half_adder_tb.v` - Testbench
- `half_adder_waveform.png` - Simulation Waveform

## Tools Used
- EDA Playground
- Icarus Verilog
- GTKWave

## Truth Table
| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |
