                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


http://www.thingiverse.com/thing:3352422
Reuse Your Ender 3 / CR10 Z-Stop as a Filament Sensor! by The_Goss is licensed under the Creative Commons - Attribution - Share Alike license.
http://creativecommons.org/licenses/by-sa/3.0/

# Summary

Since I purchased a BLtouch a few weeks ago, my Z-stop switch has been hanging out in my parts box unused... well, time to put it to use!

Do you have an EZABL, a BLtouch or any other clone or switch in use for auto-bed-leveling? Well, then you probably removed your Z-stop switch. Reuse it! Make it a filament sensor! I designed this around the small switches that Creality uses labeled "1830" on the circuit board that they use for stop-switches. 

I personally use my switch with Octoprint in conjunction with Filament Sensor Reloaded (https://plugins.octoprint.org/plugins/filament_sensor_reloaded/).

Instructions for printing:

None, really. Just make sure you support the cylinder that holds the bowden tube on the right.

Instructions for install:

Take two small sections of bowden tubing and insert it on either side of the switch, mount the switch into the mount using the two OEM screws that held it onto your frame, then just fiddle a bit of filament through the sensor and into your extruder. The sensor and the enclosure are very lightweight, and the incoming filament keeps it upright on my Ender3, though I am open to anyone who wants to remix this for mounting to the Z-axis rod or anywhere else.

You WILL need to run the cabling to your printer/raspberrypi yourself. I extended mine with some spare network cable with some good old fashioned solder and heatshrink tubing.

My original bowden tubing fit snugly in my mount and did not come out when the printer rectracted. Consider gluing yours if you have any issues(or calibrate your prints!).

Enjoy! Share anywhere! My designs will always be open source and free for all.

# Print Settings

Printer Brand: Creality
Printer: Ender 3
Rafts: Doesn't Matter
Supports: Yes
Resolution: 0.2
Infill: ~20%