# PWM Generator using Verilog

## 📌 Overview

This project implements a **Pulse Width Modulation (PWM) Generator** using Verilog HDL.

PWM is a technique used to generate a digital signal with a variable duty cycle. The duty cycle can be changed to control the average power delivered to a load.

---

## Features

- Verilog HDL implementation
- Configurable duty cycle
- Counter-based PWM generation
- Fixed PWM period
- Complete testbench
- Simulation-ready design
- Waveform verification

---

## Working Principle

The PWM generator uses a counter that continuously counts from `0` to `255`.

The PWM output is HIGH when:

```text
Counter < Duty Cycle
```

Otherwise, the output is LOW.

### Duty Cycle Formula

```text
Duty Cycle (%) = (HIGH Time / Total Period) × 100
```

For an 8-bit PWM:

| Duty Input | Approx. Duty Cycle |
|---:|---:|
| 0 | 0% |
| 64 | 25% |
| 128 | 50% |
| 192 | 75% |
| 255 | ~100% |

---

## Block Diagram

```text
              +----------------+
Clock ------->|                |
              |    Counter     |
              |                |
              +-------+--------+
                      |
                      v
Duty Cycle --------> Comparator
                      |
                      v
                   PWM OUT
```

---

## Inputs

| Signal | Description |
|---|---|
| `clk` | System clock |
| `rst` | Reset |
| `duty_cycle[7:0]` | Duty-cycle control |

## Output

| Signal | Description |
|---|---|
| `pwm_out` | PWM output signal |

---

## Project Files

```text
PWM-Generator-Verilog/
├── README.md
├── pwm_generator.v
├── pwm_generator_tb.v
├── simulation_result.png
├── waveform.png
└── LICENSE
```

---

## Applications

- DC Motor Speed Control
- LED Brightness Control
- Servo Control
- Power Electronics
- FPGA Applications
- Embedded Systems

---

## Tools Used

- Verilog HDL
- ModelSim
- Vivado
- Icarus Verilog
- GTKWave

---

## Author

**Sravani C**

Electronics and Communication Engineering (ECE)