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
- Filament-Runout Sensor (using existing endstops)
- 32 Bit Mainboard
- 2 independent extruders (fast switching)
- Autobedleveling and Mesh-Correction
- Newest Marlin Firmware (V2.1.x)
- Using existing CR-10 Frame (no drilling, etc.)


# Parts
## Needed Parts

| Pic | Name | Shoplink | Price (ca) |
|--|--|--|--|
| <img src="https://images-na.ssl-images-amazon.com/images/I/41vLHW8nHKL.jpg" width="100"> | **CR-10 Dual Z Axis upgrade** | [Amazon](https://www.amazon.de/gp/product/B074FXY823) / [Aliexpress](https://www.aliexpress.com/item/33005235559.html)|   22€ - 45€  |
| ![](https://images-na.ssl-images-amazon.com/images/I/71%2BWoab3ziL._SL100_.jpg) | **SKR Pro v1.1 Mainboard**<br>with 6 Steppermotor-Drivers | [Amazon](https://www.amazon.de/gp/product/B07W5XS572/) / [Aliexpress](https://www.aliexpress.com/item/33042699158.html) | 33€ - 50€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/61G7VimABYL._SL100_.jpg) | **6x TMC2130 Steppermotor Drivers**<br>in SPI-Mode | [Amazon](http://amazon.de/gp/product/B07RN7QP7V) / [Aliexpress](https://www.aliexpress.com/item/32907648703.html) | 50€ - 70€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/61pZjtEacPL._SL100_.jpg) | **RepRap Discount LCD 12864**<br>with SD-Card Slot | [Amazon](https://www.amazon.de/gp/product/B01LO20XGS/) / [Aliexpress](https://www.aliexpress.com/item/4000331136499.html) | 11€ - 16€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/61G7VimABYL._SL100_.jpg) | **6x TMC2130 Steppermotor Drivers**<br>in SPI-Mode | [Amazon](http://amazon.de/gp/product/B07RN7QP7V) / [Aliexpress](https://www.aliexpress.com/item/32907648703.html) | 50€ - 70€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/71ofWfEviDL._SL100_.jpg) | **2x Nema 17 Steppermotors**<br>for Extruder & 2nd X-Axis | [Amazon](http://amazon.de/gp/product/B07MCXKW68) / [Aliexpress](https://www.aliexpress.com/item/4000130492082.html) | 10€ - 25€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/61HmtTC%2BtrL._SL100_.jpg) | **MK8 Hotend**<br>12 Volt (with PTFE-Tube) | [Amazon](http://amazon.de/gp/product/B07SFZH98N) / [Aliexpress](https://www.aliexpress.com/item/4000219883438.html)| 10€ - 25€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/71Sqo0MnqFL._SL100_.jpg) | **2x Metal Bowden Extruder**<br>1 for existing and 1 for new extruder | [Amazon](http://amazon.de/gp/product/B07QW4YF5B) / [Aliexpress](https://www.aliexpress.com/item/32834380573.html) | 8€ - 13€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/51Jv1SLCGgL._SL100_.jpg) | **2x 5015 Part Cooling Fans**<br>12 Volt | [Amazon](http://amazon.de/gp/product/B00K9L8NWC) / [Aliexpress](https://www.aliexpress.com/item/4000141395273.html) | 2€ - 9€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/81ud%2Bv9ghlL._SL100_.jpg) | **2x Noctua NF-A4x10 FL**<br>12 Volt - Hotend Fans| [Amazon](http://amazon.de/gp/product/B009NQLT0M) | 26€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/61ky7HJJxCL._SL100_.jpg) | **120mm Fan**<br>12 Volt - for Mainboard | [Amazon](http://amazon.de/gp/product/B00K9L8NWC) | 4€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/61LqqjvOLCL._SL100_.jpg) | **Kepton-Tape + insulating material** | [Amazon](http://amazon.de/gp/product/B07D6LYP85) / [Aliexpress](https://www.aliexpress.com/item/4000389787844.html)| 3€ - 9€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/61Zay-PxgGL._SL100_.jpg) | **4x V-Slot wheels**| [Amazon](http://amazon.de/gp/product/B07SJ3VZ68)) / [Aliexpress](https://www.aliexpress.com/item/4000234983430.html) | 6€ - 14€ |
| ![](https://images-na.ssl-images-amazon.com/images/I/61x2k6e3QZL._SL100_.jpg) | **GT2 Timing-Belt Set**| [Amazon](http://amazon.de/gp/product/B07JGXG7S2) / [Aliexpress](https://www.aliexpress.com/item/4000091123800.html) | 4€ - 16€ |
|||**Sum**| **190€ - 320€**|






## Optional Parts
| Pic | Name | Shoplink | Price (ca) |
|--|--|--|--|
| ![](https://images-na.ssl-images-amazon.com/images/I/611P-rqe%2B2L._SL100_.jpg) | **Inductive Sensor for auto bedleveling** <br> Depends on the distance from nozzle to the steelbed <br> :heavy_exclamation_mark:THIS SENSORS ONLY DETECTS METAL:heavy_exclamation_mark: <br> You need to have a steel buildplate - or measure the distance between the metal heated bed and your nozzle (for example if you have a glassplate on your heated bed) | [Amazon (8mm distance)](https://www.amazon.de/gp/product/B071FTP2ZP/)<br>or<br>[Amazon  (4mm distance)](https://www.amazon.de/gp/product/B071ZQ6VV6/)|   8€  |
| ![](https://images-na.ssl-images-amazon.com/images/I/61-xCj-X1mL._SL100_.jpg) ![](https://images-na.ssl-images-amazon.com/images/I/8127114wfIL._SL100_.jpg) | **GT2 Timing Pulley and Belt (852mm)**<br>for syncing the 2 Z-Axis | [Amazon](https://www.amazon.de/gp/product/B079BJQNN1/) and [Amazon](https://www.amazon.de/gp/product/B07D8ZZD9Y/) |   17€  |




# Instructions
Do the CR-10 dual-z upgrade as instructed [here](https://www.sainsmart.com/blogs/news/how-to-install-dual-z-axis-to-upgrade-your-creality-cr-10-3d-printer).  
Skip the controlbox-steps and go directly to the step **Bracket installing**, as we have our own mainboard.

All other steps are documented in the [manual](Docs)  
:heavy_exclamation_mark: UNDER CONSTRUCTION :heavy_exclamation_mark:

# Marlin #
You can find my fork of marlin 2.0.x [here](https://github.com/sensenmann/Franken-10-Marlin)
