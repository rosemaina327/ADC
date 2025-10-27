# ADC Design Project

This repository contains the intorductory design, simulation, and verification files for an **Analog-to-Digital Converter (ADC)** project.  
It includes both analog and a few digital modules, testbenches, and supporting files.


---

##  Repository Structure

| Folder / File | Description |
|----------------|-------------|
| **ADC_all** | Top-level schematic or integrated design of the ADC system |
| **ADC_cmp** | Comparator circuit design |
| **ADC_cmp_TB** | Testbench for the comparator |
| **ADC_digital_v** / **ADC_dig2** | Digital logic or Verilog implementation of the ADC control section |
| **ADC_tb_mm** | Mixed-mode testbench for overall ADC verification |
| **AMP1_TB**, **AMP2_TB** | Testbenches for amplifier stages |
| **DAC** | Digital-to-Analog Converter block (used within ADC) |
| **OTA2** | Operational Transconductance Amplifier (OTA) design |
| **TGATE** | Transmission gate circuit used in sampling or switching |
| **GR**, **Transistors** | Layout, transistor-level, or generic reference files |
| **data.dm**, **cdsinfo.tag** | Cadence or simulation environment data files |

---

##  Overview

This project focuses on designing and validating an **Analog-to-Digital Converter** with modular analog and digital blocks.  
The design includes:
- High-speed comparator
- Operational amplifiers (OTA stages)
- Comprehensive testbenches for each block

---

## ⚙️ Tools & Technology

- **Technology Node:** AMS 0.18 µm CMOS  
- **Design Platform:** Cadence Virtuoso  
- **Simulation:** ADE L/XL  

---
### Future Work


Integrate ADC into mixed-signal SoC environment
Optimize power and speed performance
### Author

Rose Maina
B.Sc. Electrical and Electronics Engineering
rosemaina327@gmail.com

Focus areas: Analog/Mixed-Signal IC Design, Data Conversion Circuits

**Copyrights:KIT(Karlsruhe Institute of technology)-IPE**

