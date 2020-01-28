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
M117 Homing...
T0                                    ; park extruder
G28
M605 S1                               ; reset to autopark
M605 S2 X150                          ; setting duplicate mode
G28 X
M117 Homing done!

; ***************************************************************************
; ***************************************************************************
