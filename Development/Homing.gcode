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
;G29                       ; Auto BED_LEVELING    (DONT!!!!)

T1                        ;park nozzle
T0

G90                       ; use absolute positioning
M117 Homing done!

; ***************************************************************************
; ***************************************************************************
