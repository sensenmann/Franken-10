; home all axes
T1
T0
M605 S0                               ; full controll (so the toolheads don't park!)
M117 Homing X+Y Axis...
G91                                   ; use relative positioning
T0
G0 X20 Y20 F5000                      ; move left extruder + buildplate a bit away
G4 P500

T1
G4 P500
M605 S1                               ; reset to autopark
G4 P500
G0 X-20 F5000                         ; move right extruder a bit away
G4 P500
M605 S0                               ; full controll (so the toolheads don't park!)
T0


G28 XY
;M18 X                                 ;release tension on x (DONT!!!)

M605 S1                               ; reset to autopark

T1
T0

M117 Homing Z-Axis...
G28 Z                     ; homing z

M117 Bed leveling...
G29                       ; Auto BED_LEVELING    (DONT!!!!)

T1                        ;park nozzle
T0

G90                       ; use absolute positioning
M117 Homing done!
