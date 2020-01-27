; ***************************************************************************
; *******************************  HOMING ***********************************
; ***************************************************************************

M220 S100                             ; Set Feedrate to 100%
G91                                   ; use relative positioning
G29 A                                 ; activate bed leveling
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
M117 Homing...
G91                                   ; use relative positioning
T0
G0 X5 Y20 F5000                      ; move left extruder + buildplate a bit away

T1
M605 S1                               ; reset to autopark
G0 X-5 F5000                         ; move right extruder a bit away
M605 S0                               ; full controll (so the toolheads don't park!)
T0


G28
M605 S1                               ; reset to autopark

G27                        ;park nozzle

G90                       ; use absolute positioning
M117 Homing done!

; ***************************************************************************
; ***************************************************************************
