# 3D Printing instructions

All parts are mechanical parts and should be printed in the **final version** with ABS/PETG and 100% infill.

For **developing/testing purpose** I've made very good experiences with PLA and 20% infill. This is stable enough! :grimacing:



## Franken-10 Parts

All parts can be printed without supports - **except** `X-Holder Left-Front.stl`.
This part need support on the extension of the 2020 V-Type profile.
- `X-Holder Left-Front.stl`
- `X-Holder Left-Back.stl`
- `X-Holder Right-Front.stl`
- `X-Holder Right-Back.stl`
- `Extruder Carrier - Left.stl`
- `Extruder Carrier - Right.stl`
- `Nozzle Wipe - Left.stl`
- `Nozzle Wipe - Right.stl`
- `Endstopp-Part.stl` *(optional - only need, when you don't have an ABL-Probe)*

## Eccentric Spacer

Original part from https://www.thingiverse.com/thing:303099  
We need 2 parts for the second extruder-wheels.


## 5015 Bullseye Fans
Original part from https://www.thingiverse.com/thing:2759439

Print the following parts (once):
- `CR10_STOCK_MANUAL_BASE_V11.3.stl`
- `CR10TEVO_5015_DUCT_V7.5....stl`
- Optional (for Autobed-Leveling):
  - `ALL_18MM_EZABL_X+48_Y-2_RIGHT_V7.5..stl` *(for 18mm Probes)*
  - `ALL_13MM_EZABL_X+48_Y-2_RIGHT_7.5..stl` *(for 13mm Probes)*

Then print again the following parts - but mirror them on the x-axis (for the 2nd extruder):
- `CR10_STOCK_MANUAL_BASE_V11.3.stl`
- `CR10TEVO_5015_DUCT_V7.5....stl`

## CR-10 Feet
Original part from https://www.thingiverse.com/thing:3093788  
Print 4x `Pied-CR10-Update.STL` and mount it to the CR-10 frame.

## Filament-Runoutsensor Mount
Original part from http://www.thingiverse.com/thing:3352422  
Print 2x `Filament_Sensor_Crealityv1.stl`  
This part is using your existing CR-10 endstops.

## CR-10 Dual_Z Pulley-Setup
Original part from https://www.thingiverse.com/thing:2628377  
Print `Idle_Pulley_Tension_Bracket.stl`
