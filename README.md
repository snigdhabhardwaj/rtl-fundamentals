# RTL Fundamentals - Verilog Design & Verification

Combinational arithmetic circuits implemented in Verilog with testbenches and simulation waveforms.

---

## 1. Half Adder
Adds two 1-bit inputs, no carry in.
- **Sum** = A XOR B
- **Carry** = A AND B

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

---

## 2. Full Adder
Adds two 1-bit inputs with carry in.
- **Sum** = A XOR B XOR Cin
- **Cout** = (A&B) | (B&Cin) | (A&Cin)

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

---

## 3. Half Subtractor
Subtracts two 1-bit inputs, no borrow in.
- **Diff** = A XOR B
- **Borrow** = (~A) AND B

| A | B | Diff | Borrow |
|---|---|------|--------|
| 0 | 0 |  0   |   0    |
| 0 | 1 |  1   |   1    |
| 1 | 0 |  1   |   0    |
| 1 | 1 |  0   |   0    |

---

## 4. Full Subtractor
Subtracts two 1-bit inputs with borrow in.
- **Diff** = A XOR B XOR Bin
- **Bout** = (~A&B) | (~A&Bin) | (B&Bin)

| A | B | Bin | Diff | Bout |
|---|---|-----|------|------|
| 0 | 0 |  0  |  0   |  0   |
| 0 | 0 |  1  |  1   |  1   |
| 0 | 1 |  0  |  1   |  1   |
| 0 | 1 |  1  |  0   |  1   |
| 1 | 0 |  0  |  1   |  0   |
| 1 | 0 |  1  |  0   |  0   |
| 1 | 1 |  0  |  0   |  0   |
| 1 | 1 |  1  |  1   |  1   |

---

## Files
| File | Description |
|------|-------------|
| `half_adder.v` | Half Adder Design |
| `half_adder_tb.v` | Half Adder Testbench |
| `full_adder.v` | Full Adder Design |
| `full_adder_tb.v` | Full Adder Testbench |
| `half_subtractor.v` | Half Subtractor Design |
| `half_subtractor_tb.v` | Half Subtractor Testbench |
| `full_subtractor.v` | Full Subtractor Design |
| `full_subtractor_tb.v` | Full Subtractor Testbench |

## Tools Used
- EDA Playground
- Icarus Verilog 12.0
- GTKWave / EPWave
