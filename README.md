# Franken-10
**A CR-10 Dual-X-Carriage Mod**

This is my first public Open Source project, so please be kind with me. Also, english isn't my native language - please forgive me typos and grammatical mistakes :wink:

:bangbang::bangbang:
**This is an unstable work in progress!! Don't use it now, until you're willing to contribute to this project!!**
:bangbang::bangbang:

![Franken-10](https://raw.githubusercontent.com/sensenmann/Franken-10/develop/Docs/Images/all1.png)


# Intention
I wanted to upgrade my awesome Creality CR-10 3D Printer to make it work with dual axis - but without building it completely up from the ground.
Also I want to keep the upgrades **cheap**, so everyone can easily join this journey.

# Benefits
- TMC2130 upgrade
- Silent printing (thanks to TMC2130)
- Sensorless homing on X and Y
- 32 Bit Mainboard
- 2 independent extruders (fast switching)
- Autobedleveling and Mesh-Correction
- Newest Marlin Firmware (V2.1.x)


# Parts
## Needed Parts

| Pic | Name | Shoplink | Price (ca) |
|--|--|--|--|
| <img src="https://images-na.ssl-images-amazon.com/images/I/41vLHW8nHKL.jpg" width="150"> | **CR-10 Dual Z Axis upgrade** | [Amazon](https://www.amazon.de/gp/product/B074FXY823) |   45,- EUR  |
| ![](https://images-na.ssl-images-amazon.com/images/I/71%2BWoab3ziL._SL150_.jpg) | **SKR Pro v1.1 Mainboard**<br>with 6 Steppermotor-Drivers | [Amazon](https://www.amazon.de/gp/product/B07W5XS572/) | 50,- EUR |
| ![](https://images-na.ssl-images-amazon.com/images/I/61G7VimABYL._SL150_.jpg) | **6x TMC2130 Steppermotor Drivers**<br>in SPI-Mode | [Amazon](http://amazon.de/gp/product/B07RN7QP7V) | 70,- EUR |
| ![](https://images-na.ssl-images-amazon.com/images/I/71ofWfEviDL._SL150_.jpg) | **2x Nema 17 Steppermotors**<br>for Extruder & 2nd X-Axis | [Amazon](http://amazon.de/gp/product/B07MCXKW68) | 25,- EUR |
| ![](https://images-na.ssl-images-amazon.com/images/I/61HmtTC%2BtrL._SL150_.jpg) | **MK8 Hotend**<br>with PTFE-Tube | [Amazon](http://amazon.de/gp/product/B07SFZH98N) | 25,- EUR |
| ![](https://images-na.ssl-images-amazon.com/images/I/71Sqo0MnqFL._SL150_.jpg) | **2x Metal Bowden Extruder**<br>1 for existing and 1 for new extruder | [Amazon](http://amazon.de/gp/product/B07QW4YF5B) | 13,- EUR |
| ![](https://images-na.ssl-images-amazon.com/images/I/51Jv1SLCGgL._SL150_.jpg) | **2x 5015 Part Cooling Fans**<br>(12 Volt) | [Amazon](http://amazon.de/gp/product/B00K9L8NWC) | 9,- EUR |
| ![](https://images-na.ssl-images-amazon.com/images/I/61LqqjvOLCL._SL150_.jpg) | **Kepton-Tape + Isolating Material** | [Amazon](http://amazon.de/gp/product/B07D6LYP85) | 9,- EUR |
| ![](https://images-na.ssl-images-amazon.com/images/I/61Zay-PxgGL._SL150_.jpg) | **4x V-Slot Rolls**| [Amazon](http://amazon.de/gp/product/B07SJ3VZ68) | 14,- EUR |
| ![](https://images-na.ssl-images-amazon.com/images/I/61x2k6e3QZL._SL150_.jpg) | **Timing-Belt Set**| [Amazon](http://amazon.de/gp/product/B07JGXG7S2) | 16,- EUR |
|||**Sum**| **270,- EUR**|






## Optional Parts
| Pic | Name | Shoplink | Price (ca) |
|--|--|--|--|
| ![](https://images-na.ssl-images-amazon.com/images/I/613QSiCendL._SL150_.jpg) | **BIGTREETECH TFT24 V1.1 Display with SD-Card**<br>Needed to print from SD-Card<br>Unfortunately you can't use the SD-Card-Slot of the SKR PRO Mainboard :sob: | [Amazon](https://www.amazon.de/gp/product/B07V7YKFHY) |   24,- EUR  |
| ![](https://images-na.ssl-images-amazon.com/images/I/611P-rqe%2B2L._SL150_.jpg) | **Inductive Sensor for auto bedleveling** <br> Depends on the distance from nozzle to the steelbed <br> :heavy_exclamation_mark:THIS SENSORS ONLY DETECTS METAL:heavy_exclamation_mark: <br> :heavy_exclamation_mark:NOT GLASS OR ANYTHING ELSE!:heavy_exclamation_mark: | [Amazon](https://www.amazon.de/gp/product/B071FTP2ZP/) (8mm distance)<br>or<br>[Amazon ](https://www.amazon.de/gp/product/B071ZQ6VV6/) (4mm distance)|   8,- EUR  |
| ![](https://images-na.ssl-images-amazon.com/images/I/61-xCj-X1mL._SL150_.jpg) ![](https://images-na.ssl-images-amazon.com/images/I/8127114wfIL._SL150_.jpg) | **GT2 Timing Pulley and Belt (852mm)**<br>for syncing the 2 Z-Axis | [Amazon](https://www.amazon.de/gp/product/B079BJQNN1/) and [Amazon](https://www.amazon.de/gp/product/B07D8ZZD9Y/) |   17,- EUR  |




# Instructions
## Things to print
You need to print this parts - before you disassemble your CR-10 :wink:
- **Eccentric Spacer** (*eccentric_spacer_big_x_4.stl*) ([link](3D%20Models/Needed%20Parts%20(Print%20this!)/Eccentric_Spacer_Openbuilds__Makerslide))
- **Petsfang Cooler** ([link](3D%20Models/Needed%20Parts%20(Print%20this!)/E3Dv6%2BCNC%2BMount%2B%26%2B5015%2Bfan%2BBullseye))
  - CR10_STOCK_MANUAL_BASE_V11.3.stl
  - STOCKBASE_DUALFAN_DUCT_9.20.stl
  - For Autobedleveling (13mm or 18mm - depends on your probe):
    - ALL_13MM_EZABL_X+48_Y-2_RIGHT_7.5..stl
    - ALL_18MM_EZABL_X+48_Y-2_RIGHT_V7.5..stl
