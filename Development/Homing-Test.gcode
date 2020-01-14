; home all axes
M605 S0                               ; full controll (so the toolheads don't park!)
M117 Homing X+Y Axis...
G91                                   ; use relative positioning
T0
G0 X20 Y20 F2000                      ; move left extruder + buildplate a bit away

T1
M605 S1                               ; reset to autopark
G0 X-20 F2000                         ; move right extruder a bit away
G4 P500
M605 S0                               ; full controll (so the toolheads don't park!)
T0


G28 X

M605 S1                               ; reset to autopark
