# Franken-10
**A CR-10 Dual-X-Carriage Mod**

This is my first public Open Source project, so please be kind with me. Also, english isn't my native language - please forgive me typos and grammatical mistakes :wink:

:bangbang::bangbang:
**This is an unstable work in progress!! Don't use it now, until you're willing to contribute to this project!!**
:bangbang::bangbang:

![Franken-10](https://raw.githubusercontent.com/sensenmann/Franken-10/develop/Development/Images/all1.png)

<h3>Table of Contents</h3>
<!-- TOC depthFrom:2 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Intention](#intention)
- [Benefits](#benefits)
- [Needed parts](#needed-parts)
- [Instructions](#instructions)
- [Firmware](#firmware)

<!-- /TOC -->


## Intention
I wanted to upgrade my awesome Creality CR-10 3D Printer to make it work with **dual X-Carriage** - but without building it completely up from the ground.
Also I want to keep the upgrades **cheap**, so everyone can easily join this journey.

At the moment, the overall costs for the needed parts is around **190€ - 320€**.

## Benefits
- TMC2130 upgrade
- Silent printing (thanks to TMC2130)
- Sensorless homing on X and Y
- Filament-Runout Sensor (by using existing endstops)
- 32 Bit Mainboard
- 2 independent extruders (fast switching)
- Autobedleveling and Mesh-Correction
- Basing on Marlin Firmware V2.0.1
- Using existing CR-10 Frame (no drilling, etc.)



## Needed parts
All needed and optionals parts can be found [here](Parts.md)


## Instructions
Do the CR-10 dual-z upgrade as instructed [here](https://www.sainsmart.com/blogs/news/how-to-install-dual-z-axis-to-upgrade-your-creality-cr-10-3d-printer).  
Skip the controlbox-steps and go directly to the step **Bracket installing**, as we have our own mainboard.

All other steps are documented in the **[manual](Docs)**  
:heavy_exclamation_mark: UNDER CONSTRUCTION :heavy_exclamation_mark:

## Firmware
You can find my fork of Marlin 2.0 [here](https://github.com/sensenmann/Franken-10-Marlin)   
The latest Firmware can be found in the **[releases](../../releases)**-section
