

; home all axes
M605 S0                               ; full controll (so the toolheads don't park!)
M117 Homing X+Y Axis...
G91                                   ; use relative positioning
T0
G0 X10 Y20 F5000                      ; move left extruder + buildplate a bit away
T1
M605 S1                               ; reset to autopark
G0 X-10 F5000                         ; move right extruder a bit away
M605 S0                               ; full controll (so the toolheads don't park!)
T0
M605 S1                               ; reset to autopark


G28 XZ
G90                                   ; use absolute positioning
M420 S Z2                             ; activate bed leveling
G21                                   ; set units to millimeters
M83                                   ; setting extruder to relative
T0


G1 X10 Y30 Z0.2 F10000         ;move to 10/30/0.1 (fast)
G1 E3 F10000                     ;un-retract
G1 E30 F400				               ;make a blob
G1 X150 Y30 E8.91 F1000        ;line from X=10 to X=150
G1 E-3 F10000                   ;retract


G1 X150 Y30 F10000             ;move fast to X=150 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X150 Y70 F10000             ;move fast to X=150 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X140 Y30 F10000             ;move fast to X=140 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X140 Y70 F10000             ;move fast to X=140 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X130 Y30 F10000             ;move fast to X=130 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X130 Y70 F10000             ;move fast to X=130 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X120 Y30 F10000             ;move fast to X=120 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X120 Y70 F10000             ;move fast to X=120 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X110 Y30 F10000             ;move fast to X=110 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X110 Y70 F10000             ;move fast to X=110 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X100 Y30 F10000             ;move fast to X=100 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X100 Y70 F10000             ;move fast to X=100 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X160 Y30 F10000             ;move fast to X=160 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X160 Y70 F10000             ;move fast to X=160 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X170 Y30 F10000             ;move fast to X=170 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X170 Y70 F10000             ;move fast to X=170 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X180 Y30 F10000             ;move fast to X=180 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X180 Y70 F10000             ;move fast to X=180 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X190 Y30 F10000             ;move fast to X=190 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X190 Y70 F10000             ;move fast to X=190 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X200 Y30 F10000             ;move fast to X=200 Y=30
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y50 F1000            ; ********* extrude 30 -> 50 ********
G1 E-3 F10000                   ;retract
G1 X200 Y70 F10000             ;move fast to X=200 Y=70
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y90 F1000            ; ********* extrude 70 -> 90 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


; **************************

T1

G1 X290 Y30 Z0.2 F10000         ;move to 290/30/0.1 (fast)
G1 E3 F10000                     ;un-retract
G1 E30 F400				               ;make a blob
G1 X150 Y30 E8.91 F1000        ;line from X=290 to X=150
G1 E-3 F10000                   ;retract



G1 X150 Y50 F10000             ;move fast to X=150 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X150 Y90 F10000             ;move fast to X=150 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X140.1 Y50 F10000             ;move fast to X=140.1 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X140.1 Y90 F10000             ;move fast to X=140.1 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X130.2 Y50 F10000             ;move fast to X=130.2 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X130.2 Y90 F10000             ;move fast to X=130.2 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X120.3 Y50 F10000             ;move fast to X=120.3 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X120.3 Y90 F10000             ;move fast to X=120.3 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X110.4 Y50 F10000             ;move fast to X=110.4 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X110.4 Y90 F10000             ;move fast to X=110.4 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X100.5 Y50 F10000             ;move fast to X=100.5 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X100.5 Y90 F10000             ;move fast to X=100.5 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X160 Y50 F10000             ;move fast to X=160 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X160 Y90 F10000             ;move fast to X=160 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X169.9 Y50 F10000             ;move fast to X=169.9 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X169.9 Y90 F10000             ;move fast to X=169.9 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X179.8 Y50 F10000             ;move fast to X=179.8 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X179.8 Y90 F10000             ;move fast to X=179.8 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X189.7 Y50 F10000             ;move fast to X=189.7 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X189.7 Y90 F10000             ;move fast to X=189.7 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


G1 X199.6 Y50 F10000             ;move fast to X=199.6 Y=50
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y70 F1000            ; ********* extrude 50 -> 70 ********
G1 E-3 F10000                   ;retract
G1 X199.6 Y90 F10000             ;move fast to X=199.6 Y=90
G1 Z0.2 F500                    ;lower nozzle (if needed)
G1 E3 F10000                    ;un-retract
G1 E1.27 Y110 F1000            ; ********* extrude 90 -> 110 ********
G1 E-3 F10000                   ;retract
G1 Z1 F500                    ;lift nozzle


; **************************


T0
G1 Y300 F10000