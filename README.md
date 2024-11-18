# Simple Voting Machine on Nexys A7 FPGA

This repository showcases a **Simple Voting Machine** implemented on the Nexys A7 FPGA. The project allows casting votes for four candidates (A, B, C, and D) with additional functionalities for resetting and mode switching. The project was developed using Verilog and demonstrates both simulation and hardware implementation results.

## Features

1. **Vote Casting:**
   - Press the corresponding button for **A**, **B**, **C**, or **D** to cast a vote.
   - Button press for **>1 second** is required for a successful vote cast.
   - If a button is kept pressed for >1 second after a vote is cast, no additional vote is recorded.
   - **Visual Feedback:** All 8 LEDs flash for 1 second upon a successful vote.

2. **Mode Functionality:**
   - **Mode 0:** Allows vote casting.
   - **Mode 1:** Displays the total votes received by each candidate. Press the respective button to display the count for a specific candidate.

3. **Reset Functionality:**
   - Resets all votes to zero and returns the machine to **Mode 0**.

## Design Overview

The project consists of the following main components:

- **Button Control:** Handles debounce logic and ensures vote recording occurs only once per valid button press.
- **Vote Logger:** Stores and updates the vote count for each candidate.
- **Mode Control:** Switches between voting and display modes.
- **Top Module:** Integrates all components to implement the voting machine logic.
- **Testbench:** Used to verify functionality via simulations.

### Block Diagram
![image](https://github.com/user-attachments/assets/d53b8abb-cff5-4cf3-be91-de9c3a6a57a9)

### RTL Schematic
![image](https://github.com/user-attachments/assets/453367d4-1156-4081-aabb-62d058a39b87)

### Hardware Results
The voting machine was implemented and verified on the Nexys A7 FPGA board. Below is an example result:
| Candidate | Votes Received |
|-----------|----------------|
| A         | 1              |
| B         | 2              |
| C         | 3              |
| D         | 4              |

## Results

![image](https://github.com/user-attachments/assets/2c9397d3-2949-4b08-bf76-f829394b6b22)

![image](https://github.com/user-attachments/assets/3b3a0734-01ad-41c0-b1ac-b88daecb0fab)

![image](https://github.com/user-attachments/assets/60b5d7eb-8142-4923-b8d6-c1a6519b6b43)

![image](https://github.com/user-attachments/assets/ae4c6eb9-3acd-498d-9012-18bf906e93d1)

## Demonstration

Click on the thumbnail below to watch the demonstration video:

[![Simple Voting Machine Demo](https://img.youtube.com/vi/GnJFNDx90b4/0.jpg)](https://www.youtube.com/watch?v=GnJFNDx90b4)
