# Franken-10
**A CR-10 Dual-X-Carriage Mod**

This is my first public Open Source project, so please be kind with me. Also, english isn't my motherlanguage - please forgive me typos and grammatical mistakes :wink:

:bangbang::bangbang:
**This is an unstable work in progress!! Don't use it now, until you're willing to contribute to this project!!**
:bangbang::bangbang:

![Franken-10](https://raw.githubusercontent.com/sensenmann/Franken-10/develop/Docs/Images/all1.png)


# Intention
I wanted to upgrade my awesome Creality CR-10 3D Printer to make it work with dual axis - but without building it completly up from the ground.
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
- **CR-10 Dual Z Axis upgrade** ([Amazon](https://www.amazon.de/gp/product/B074FXY823))
- **SKR Pro v1.1 Mainboard** with 6 Steppermotor-Drivers ([Amazon](https://www.amazon.de/gp/product/B07W5XS572/))
- **TMC2130 Steppermotor Drivers in SPI-Mode)** - 6x ([Amazon](http://amazon.de/gp/product/B07RN7QP7V))
- **Nema 17 Steppermotors** - 2x - for Extruder & 2nd X-Axis ([Amazon](https://www.amazon.de/gp/product/B07P6ZJB8D))
- **Hotend MK8** (([Amazon](https://www.amazon.de/gp/product/B07SFZH98N/)))
- **Metal Bowden Extruder** ([Amazon](https://www.amazon.de/gp/product/B07QW4YF5B/))
- **Part Cooling Fans 5015 12V** - 2x  ([Amazon](https://www.amazon.de/gp/product/B00K9L8NWC/))
- **Kepton-Tape + Isolating Material** ([Amazon](https://www.amazon.de/gp/product/B07D6LYP85))
- **PTFE Tube** ([Amazon](https://www.amazon.de/gp/product/B07NXQTPHY))
- **V-Slot Rolls** - 4x ([Amazon](https://www.amazon.de/gp/product/B07SJ3VZ68))
- **Timing-Belt Set** ([Amazon](https://www.amazon.de/dp/B07JGXG7S2))



## Optional Parts
- **BIGTREETECH TFT24 V1.1 Display with SD-Card** ([Amazon](https://www.amazon.de/gp/product/B07V7YKFHY/))
  - Unfortunately you can't use the SD-Card-Slot of the SKR PRO Mainboard :sob:
- **Inductive Sensor for Auto Bedleveling**
  - [Amazon 8mm distance](https://www.amazon.de/gp/product/B071FTP2ZP/) or [Amazon 4mm distance](https://www.amazon.de/gp/product/B071ZQ6VV6/)
  - depends on the distance from nozzle to the steelbed)
  - :heavy_exclamation_mark:THIS SENSORS ONLY DETECTS METAL - NOT GLASS OR ANYTHING ELSE!:heavy_exclamation_mark:
- **GT2 Timing Pulley and Belt for syncing the 2 Z-Axis**
  - GT2 Pulley ([Amazon](https://www.amazon.de/gp/product/B079BJQNN1/)
  - GT2 Belt 852mm ([Amazon](https://www.amazon.de/gp/product/B07D8ZZD9Y/))



# Instructions
## Things to print
You need to print this parts - before you disassemble your CR-10 :wink:
- **Eccentric Spacer** (*eccentric_spacer_big_x_4.stl*) ([link](3D%20Models/Needed%20Parts%20(Print%20this!/Eccentric_Spacer_Openbuilds__Makerslide)))
- **Petsfang Cooler** ([link](3D%20Models/Needed%20Parts%20(Print%20this!/E3Dv6%2BCNC%2BMount%2B%26%2B5015%2Bfan%2BBullseye)))
  - CR10_STOCK_MANUAL_BASE_V11.3.stl
  - STOCKBASE_DUALFAN_DUCT_9.20.stl
  - For Autobedleveling (13mm or 18mm - depends on your probe):
    - ALL_13MM_EZABL_X+48_Y-2_RIGHT_7.5..stl
    - ALL_18MM_EZABL_X+48_Y-2_RIGHT_V7.5..stl
