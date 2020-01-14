;
;  If the 2nd extruder is too far in the back, then increase 2nd Nozzle Y-Offset (positive values).
;  If it is too far in the front, decrease the 2nd Nozzle Y-Offset Value (negative values).
;
;  Actual Values:
;  X:  327.5
;  Y: -0.2mm
;  Z: +0.4



; ***************************************************************************
; *******************************  HOMING ***********************************
; ***************************************************************************

M220 S100                             ; Set Feedrate to 100%
G91                                   ; use relative positioning
M420 S Z2                             ; activate bed leveling
G21                                   ; set units to millimeters
M221 T0 S{if layer_height<0.075}100{else}95{endif}
M221 T1 S{if layer_height<0.075}100{else}95{endif}


M117 Heating Bed + Extruder...

M104 S[first_layer_temperature] T0    ; set extruder temp
M104 S[first_layer_temperature] T1    ; set extruder temp
M140 S[first_layer_bed_temperature]   ; set bed temp


; home all axes
T1
T0
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


G28 XY
M18 X                                 ;release tension on x

M605 S1                               ; reset to autopark

T1
T0

M117 Homing Z-Axis...
G28 Z           ; homing z

G27         ; parking extruder


G90         ; use absolute positioning
M117 Homing done!
; ***************************************************************************
; ***************************************************************************





T0
M83                             ; setting extruder to relative


G1 X10 Y30 Z0.1 F10000          ; move to 10/30/0.1 (fast)
G1 E10 F10000                   ;un-retract
G1 E12 F400                     ;purge 12mm
G1 X150 E8.91 F1000             ; line from x10 to x150 (=140mm)


G1 E0.64 Y40 F1000              ; ********* extrude 30 -> 40 ********
G1 E-10 F10000                  ;retract
G1 Y50 F3000                      ;move fast to Y=50
G1 E10 F10000                   ;un-retract
G1 E0.64 Y60 F1000              ; ********* extrude 50 -> 60 ********
G1 E-10 F10000                  ;retract
G1 Y70 F3000                      ;move fast to Y=70
G1 E10 F10000                   ;un-retract
G1 E0.64 Y80 F1000              ; ********* extrude 70 -> 80 ********
G1 E-10 F10000                  ;retract
G1 Y90 F3000                      ;move fast to Y=90
G1 E10 F10000                   ;un-retract
G1 E0.64 Y100 F1000              ; ********* extrude 90 -> 100 ********
G1 E-10 F10000                  ;retract
G1 Y110 F3000                      ;move fast to Y=110
G1 E10 F10000                   ;un-retract
G1 E0.64 Y120 F1000              ; ********* extrude 110 -> 120 ********
G1 E-10 F10000                  ;retract
G1 Y130 F3000                      ;move fast to Y=130
G1 E10 F10000                   ;un-retract
G1 E0.64 Y140 F1000              ; ********* extrude 130 -> 140 ********
G1 E-10 F10000                  ;retract
G1 Y150 F3000                      ;move fast to Y=150
G1 E10 F10000                   ;un-retract
G1 E0.64 Y160 F1000              ; ********* extrude 150 -> 160 ********
G1 E-10 F10000                  ;retract
G1 Y170 F3000                      ;move fast to Y=170
G1 E10 F10000                   ;un-retract
G1 E0.64 Y180 F1000              ; ********* extrude 170 -> 180 ********
G1 E-10 F10000                  ;retract
G1 Y190 F3000                      ;move fast to Y=190
G1 E10 F10000                   ;un-retract
G1 E0.64 Y200 F1000              ; ********* extrude 190 -> 200 ********
G1 E-10 F10000                  ;retract
G1 Y210 F3000                      ;move fast to Y=210
G1 E10 F10000                   ;un-retract
G1 E0.64 Y220 F1000              ; ********* extrude 210 -> 220 ********
G1 E-10 F10000                  ;retract
G1 Y230 F3000                      ;move fast to Y=230
G1 E10 F10000                   ;un-retract
G1 E0.64 Y240 F1000              ; ********* extrude 230 -> 240 ********
G1 E-10 F10000                  ;retract




G1 X110 Y290 Z0.1 F10000          ; move to 10/30/0.1 (fast)
G1 E10 F10000                    ;un-retract
G1 Y150 E8.91 F1000             ; line from x10 to x150 (=140mm)


G1 E0.64 X120 F1000              ; ********* extrude 110 -> 120 ********
G1 E-10 F10000                  ;retract
G1 X130 F3000                    ;move fast to X=130
G1 E10 F10000                   ;un-retract
G1 E0.64 X140 F1000              ; ********* extrude 130 -> 140 ********
G1 E-10 F10000                  ;retract
G1 X150 F3000                    ;move fast to X=150
G1 E10 F10000                   ;un-retract
G1 E0.64 X160 F1000              ; ********* extrude 150 -> 160 ********
G1 E-10 F10000                  ;retract
G1 X170 F3000                    ;move fast to X=170
G1 E10 F10000                   ;un-retract
G1 E0.64 X180 F1000              ; ********* extrude 170 -> 180 ********
G1 E-10 F10000                  ;retract
G1 X190 F3000                    ;move fast to X=190
G1 E10 F10000                   ;un-retract
G1 E0.64 X200 F1000              ; ********* extrude 190 -> 200 ********
G1 E-10 F10000                  ;retract
G1 X210 F3000                    ;move fast to X=210
G1 E10 F10000                   ;un-retract
G1 E0.64 X220 F1000              ; ********* extrude 210 -> 220 ********
G1 E-10 F10000                  ;retract
G1 X230 F3000                    ;move fast to X=230
G1 E10 F10000                   ;un-retract
G1 E0.64 X240 F1000              ; ********* extrude 230 -> 240 ********
G1 E-10 F10000                  ;retract
G1 X250 F3000                    ;move fast to X=250
G1 E10 F10000                   ;un-retract
G1 E0.64 X260 F1000              ; ********* extrude 250 -> 260 ********
G1 E-10 F10000                  ;retract






T1
G1 X290 Y30 Z0.1 F10000          ; move to 290/30/0.1 (fast)
G1 E10 F10000                    ;un-retract
G1 E12 F400                      ;purge 12mm
G1 X150 E8.91 F1000              ; line from x290 to x150 (=140mm)

G1 E-10 F10000                   ;retract
G1 Y40 F10000                    ; move y 30->40 fast
G1 E10 F10000                    ;un-retract


G1 E0.64 Y50 F1000              ; ********* extrude 40 -> 50 ********
G1 E-10 F10000                  ;retract
G1 Y60 F3000                      ;move fast to Y=60
G1 E10 F10000                   ;un-retract
G1 E0.64 Y70 F1000              ; ********* extrude 60 -> 70 ********
G1 E-10 F10000                  ;retract
G1 Y80 F3000                      ;move fast to Y=80
G1 E10 F10000                   ;un-retract
G1 E0.64 Y90 F1000              ; ********* extrude 80 -> 90 ********
G1 E-10 F10000                  ;retract
G1 Y100 F3000                      ;move fast to Y=100
G1 E10 F10000                   ;un-retract
G1 E0.64 Y110 F1000              ; ********* extrude 100 -> 110 ********
G1 E-10 F10000                  ;retract
G1 Y120 F3000                      ;move fast to Y=120
G1 E10 F10000                   ;un-retract
G1 E0.64 Y130 F1000              ; ********* extrude 120 -> 130 ********
G1 E-10 F10000                  ;retract
G1 Y140 F3000                      ;move fast to Y=140
G1 E10 F10000                   ;un-retract
G1 E0.64 Y150 F1000              ; ********* extrude 140 -> 150 ********
G1 E-10 F10000                  ;retract
G1 Y160 F3000                      ;move fast to Y=160
G1 E10 F10000                   ;un-retract
G1 E0.64 Y170 F1000              ; ********* extrude 160 -> 170 ********
G1 E-10 F10000                  ;retract
G1 Y180 F3000                      ;move fast to Y=180
G1 E10 F10000                   ;un-retract
G1 E0.64 Y190 F1000              ; ********* extrude 180 -> 190 ********
G1 E-10 F10000                  ;retract
G1 Y200 F3000                      ;move fast to Y=200
G1 E10 F10000                   ;un-retract
G1 E0.64 Y210 F1000              ; ********* extrude 200 -> 210 ********
G1 E-10 F10000                  ;retract
G1 Y220 F3000                      ;move fast to Y=220
G1 E10 F10000                   ;un-retract
G1 E0.64 Y230 F1000              ; ********* extrude 220 -> 230 ********
G1 E-10 F10000                  ;retract
G1 Y240 F3000                      ;move fast to Y=240
G1 E10 F10000                   ;un-retract
G1 E0.64 Y250 F1000              ; ********* extrude 240 -> 250 ********
G1 E-10 F10000                  ;retract
G1 Y260 F3000                      ;move fast to Y=260
G1 E10 F10000                   ;un-retract
G1 E0.64 Y270 F1000              ; ********* extrude 260 -> 270 ********
G1 E-10 F10000                  ;retract


G1 X100 Y30 Z0.1 F10000          ; move to 100/30/0.1 (fast)
G1 E10 F10000                    ;un-retract
G1 Y150 E8.91 F1000             ; line from x10 to x150 (=140mm)


G1 E0.64 X110 F1000              ; ********* extrude 100 -> 110 ********
G1 E-10 F10000                  ;retract
G1 X120 F3000                      ;move fast to X=120
G1 E10 F10000                   ;un-retract
G1 E0.64 X130 F1000              ; ********* extrude 120 -> 130 ********
G1 E-10 F10000                  ;retract
G1 X140 F3000                      ;move fast to X=140
G1 E10 F10000                   ;un-retract
G1 E0.64 X150 F1000              ; ********* extrude 140 -> 150 ********
G1 E-10 F10000                  ;retract
G1 X160 F3000                      ;move fast to X=160
G1 E10 F10000                   ;un-retract
G1 E0.64 X170 F1000              ; ********* extrude 160 -> 170 ********
G1 E-10 F10000                  ;retract
G1 X180 F3000                      ;move fast to X=180
G1 E10 F10000                   ;un-retract
G1 E0.64 X190 F1000              ; ********* extrude 180 -> 190 ********
G1 E-10 F10000                  ;retract
G1 X200 F3000                      ;move fast to X=200
G1 E10 F10000                   ;un-retract
G1 E0.64 X210 F1000              ; ********* extrude 200 -> 210 ********
G1 E-10 F10000                  ;retract
G1 X220 F3000                      ;move fast to X=220
G1 E10 F10000                   ;un-retract
G1 E0.64 X230 F1000              ; ********* extrude 220 -> 230 ********
G1 E-10 F10000                  ;retract
G1 X240 F3000                      ;move fast to X=240
G1 E10 F10000                   ;un-retract
G1 E0.64 X250 F1000              ; ********* extrude 240 -> 250 ********
G1 E-10 F10000                  ;retract
G1 X260 F3000                      ;move fast to X=260
G1 E10 F10000                   ;un-retract
G1 E0.64 X270 F1000              ; ********* extrude 260 -> 270 ********
G1 E-10 F10000                  ;retract
G1 X280 F3000                      ;move fast to X=280
G1 E10 F10000                   ;un-retract


M18
