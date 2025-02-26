# Combinational Circuit Design Using K-Maps - Seven Segment Display
## Overview

This project focuses on designing a combinational circuit using Karnaugh Maps (K-Maps) for a seven-segment display. The seven-segment display is widely used in digital systems for numerical representation. The objective of this project is to implement an optimized combinational logic circuit for controlling the seven-segment display.
### Design Methodology

1. Truth Table Construction

- Identify the required segment states for each digit (0-9).

- Create a truth table with binary inputs and corresponding segment outputs.

2. Karnaugh Map Simplification

- Use K-Maps to minimize the Boolean expressions for each segment (a-g).

- Reduce the number of logic gates required for implementation.

##### Simulation and Verification

- Functional correctness verified using QuestaSim.

- Timing analysis performed in Vivado.

- Ensures accurate segment activation for each input.
###### Results and Analysis

- Optimized logic minimizes gate count and propagation delay.

- Efficiently implemented on Nexys-A7 FPGA.

- Smooth and accurate real-time display output.
###### Conclusion

This project provides a solid foundation in combinational circuit design using K-Maps and Verilog HDL. By optimizing the logic using K-Maps, we reduce complexity and enhance performance. The seven-segment display is an essential component in digital electronics, making this a valuable hands-on learning experience.