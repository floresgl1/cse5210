

## Digital System
## Design
## Dr. Nazanin Ghasemian
F all  2026    ·    Lect u re  1

Lecture, Lab, and Office Hours
## LEC
## Lecture Time
Tuesdays and Thursdays, 4:00 –5:15 PM
Online via Zoom
## LAB
## Lab Time
Tuesdays and Thursdays, 5:30 –6:45 PM
## OH
## Office Hours
By appointment
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   12
Online via Zoom

Structure and Grading
## 30%
## Assignment & Quizzes
## 30%
## Lab
## 40%
## Final Project & Presentation
Assignment/Quizzes 30%  +  Lab 30%  +  Final Project/Presentation 40%  =  100%
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   13

References —Textbooks
## 1
Sarah L. Harris, David Harris. Digital Design and Computer Architecture, RISC-V
## Edition, Morgan Kaufmann, 2022.
## 2
Sutherland, Stuart, Simon Davidmann, and Peter Flake. SystemVerilog for Design.
## Springer, 2004.
## 3
Spear, Chris. SystemVerilog for Verification. Springer, 2006.
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   14

References —Online
Doulos SystemVerilog Tutorials
Doulos SystemVerilog Tutorials
ChipVerify SystemVerilog Tutorials
ChipVerify SystemVerilog Tutorials
ASIC World SystemVerilog Tutorials
ASIC World SystemVerilog Tutorials
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   15

## Introduction
Everything in our digital world —computers, phones, cars, even automatic doors —is built from digital circuits.
## 1
## From Functions
to Circuits
## →
## 2
## Introduction
to HDLs
## →
## 3
## Design,
## Simulate, Test
## →
## 4
## Implement
on FPGAs
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   16

Functions as Truth Tables
Any digital system starts with a function.
For example: a light should turn ON if the motion sensor detects
someone and it's nighttime.
In logical terms: Light = Motion AND Night.
## T R U T H   T A B L E
MotionNightLight
## 000
## 010
## 100
## 111
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   17

Combinational vs. Sequential
## Combinational
Output depends only on the current input.
## E X A M P L E S
## Adders · Multiplexers · Comparators
## Sequential
Output depends on the current input plus previous state
## (memory).
## E X A M P L E S
Flip-Flops · Counters · Registers
Sequential circuits let us design systems with timing and memory, like traffic lights or digital clocks.
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   18

Scaling Up (Ex. Processors)
## Logic
## Gates
## →
## Adders
## →
## ALU
## →
## CPU
Start with logic gates → build adders → group them to form an Arithmetic Logic Unit (ALU).
Add a control unit and registers → you have a CPU.
So, at its heart, a processor is just a very large collection of digital circuits.
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   19

## Processor Architecture Basics
Core components:
## ALU
Arithmetic Logic Unit —does math/logic.
## CU
Control Unit —decides which operation to perform.
## REG
Registers —small, fast memory inside the CPU.
## I/O
Memory + I/O —store and move data.
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   110

ASIC (Application-Specific Integrated Circuit)
A chip designed for one job —e.g., a WiFi modem, GPU, or iPhone FaceID.
## P R O S
## Fast
Power efficient
Optimized for its task
## C O N S
Expensive to design
Fixed forever once manufactured
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   111

FPGA (Field-Programmable Gate Array)
A reconfigurable chip —we can “program” it with our own digital circuits.
## F L E X I B L E
Change the design anytime, andtest quickly.
## U S E D   I N
PrototypingResearchAerospaceHigh-Speed Trading (Finance)
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   112

## Specification
Define what the system should do.
## E X A M P L E
Automatic door should open when motion is detected, close after 5 seconds, and stop if an obstacle is detected.
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   113

Design (HDL)
Write code in a Hardware Description Language (HDL)
such as Verilog or VHDL.
Example snippet (pseudo-Verilog):
if(motion && !obstacle)
door = OPEN;
else
door = CLOSE;
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   114

## Simulation & Synthesis
## 3
## Simulation
Run the HDL in a simulator to test the logic with virtual
inputs.
Check: does the door open and close correctly in different cases?
## 4
## Synthesis
Translate the HDL code into actual FPGA logic blocks (LUTs,
flip-flops).
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   115

## Implementation & Testing
## 5
## Implementation
(Place & Route)
Map logic into the FPGA's physical structure —where each
flip-flop and connection goes.
## 6
## Programming
## / Testing
Upload the design onto FPGA hardware.
Connect real sensors and actuators.
Observe the door actually openingand closing.
## D I G I T A L   S Y S T E M   D E S I G N     ·     L E C T U R E   116