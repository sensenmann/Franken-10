# FAQ

<!-- TOC depthFrom:3 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [How big is the build-volume?](#how-big-is-the-build-volume)
- [What modes are supported?](#what-modes-are-supported)
- [What skills to I need to perform this?](#what-skills-to-i-need-to-perform-this)
- [Is it safe?](#is-it-safe)
- [Which slicer can I use?](#which-slicer-can-i-use)

<!-- /TOC -->

### How big is the build-volume?
The Franken-10 extends the existing X-rail, where the hotends travel on both sides, so there is additional space for the inactive extruder to park.
This is made to keep the build-volume as big as possible.  
- Single-Extrusion: 300x300x400mm
- Dual-Extrusion: 280x300x400mm
- Duplicate-Mode: 150x300x400mm *(your model can only use the half width)*

### What modes are supported?
You can still print in single extrusion mode, with your existing slicer and profiles.
If you want to print with two filaments, there are this options:
- Single-Extrusion
- Dual-Extrusion (two colors or two filament-types)
- Duplicate-Mode (the same model printed at the same time)

### What skills to I need to perform this?
There are **no programming skills** needed. Although, you need to completely disassemble your control-box and **soldier** a few cables.
Also you need to print the parts yourself on your printer.  
You don't need to drill anything in your existing CR-10 Frame or something like this.

### Is it safe?
The Firmware is based on Marlin 2.0.x with Thermal Runaway Protection enabled.

### Which slicer can I use?
You can use any slicer that supports two extruders.
Franken-10 comes with preconfigured **PrusaSlicer-Profiles**, which I recommend.
