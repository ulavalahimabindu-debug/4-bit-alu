# Traffic Light Controller – Verilog

## Description

A simple traffic light controller designed using **Verilog HDL** and a **Finite State Machine (FSM)**.

The controller cycles through three states:

**RED → GREEN → YELLOW → RED**

## Features

* Verilog HDL implementation
* FSM-based design
* Synchronous state transitions
* Asynchronous reset
* Testbench included
* Simulation output included

## Folder Structure

```text
Traffic-Light-Controller-Verilog/
│
├── src/
│   └── traffic_light_controller.v
│
├── tb/
│   └── traffic_light_controller_tb.v
│
├── output/
│   └── output.txt
│
└── README.md
```

## State Sequence

| State  | Red | Yellow | Green |
| ------ | --- | ------ | ----- |
| RED    | 1   | 0      | 0     |
| GREEN  | 0   | 0      | 1     |
| YELLOW | 0   | 1      | 0     |

## Inputs

| Signal  | Description  |
| ------- | ------------ |
| `clk`   | Clock signal |
| `reset` | Reset signal |

## Outputs

| Signal   | Description          |
| -------- | -------------------- |
| `red`    | Red traffic light    |
| `yellow` | Yellow traffic light |
| `green`  | Green traffic light  |

## Simulation

Compile using Icarus Verilog:

```bash
iverilog -o traffic_sim src/traffic_light_controller.v tb/traffic_light_controller_tb.v
```

Run the simulation:

```bash
vvp traffic_sim
```

Save the output:

```bash
vvp traffic_sim > output/output.txt
```

## Expected Output

```text
======================================
     TRAFFIC LIGHT CONTROLLER
======================================
Time    Reset   Red     Yellow  Green
--------------------------------------
10      1       1       0       0
20      0       0       0       1
30      0       0       1       0
40      0       1       0       0
50      0       0       0       1
60      0       0       1       0
70      0       1       0       0
======================================
       SIMULATION COMPLETED
======================================
```

## Learning Outcomes

This project demonstrates:

* Finite State Machines (FSM)
* Sequential logic
* Combinational logic
* Clock and reset handling
* Verilog `case` statements
* Testbench development
* Simulation and verification

## Author

**Nikhila**

## License

This project is created for educational purposes.
