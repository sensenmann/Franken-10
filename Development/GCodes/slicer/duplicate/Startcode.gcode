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
M605 S1                               ; reset to autopark
G28
G90                                   ; use absolute positioning
G1 X-83 F4000                         ; park nozzle

M117 Waiting for Heating...
M190 S[first_layer_bed_temperature]     ; wait for bed temp
M109 S[first_layer_temperature] T0      ; wait for extruder 1 temp
M109 S[first_layer_temperature] T1      ; wait for extruder 2 temp


M605 S1                               ; reset to autopark
M605 S2 X150                          ; setting duplicate mode
G28 X
M117 Homing done!


; ***************************************************************************
; ***************************************************************************


; ***************************************************************************
; ****************************  STEALTHMODE  ********************************
; ***************************************************************************
M569 S1 I0 X
M569 S1 I1 X
M569 S1 Y
; ***************************************************************************
; ***************************************************************************


; ***************************************************************************
; ****************************  PURGE LINE  *********************************
; ***************************************************************************
G90                                   ; use absolute positioning
G1 Z10.0 F500                         ; lift nozzle


M117 Purge-Line for E1...

T0
M83                             ; setting extruder to relative
G1 X5.0 Y35.0 Z0.4 F5000.0		  ; go start of print area
G1 E30 F400				              ; make a blob
G1 Y80.0 E7 Z0.3 F900.0			    ; go slowly backwards and down
G1 Y260.0 E20 Z0.2 F2000.0		  ; go to end of plate and lower z
G1 X6.0 F2000.0				          ; move to right for 2nd lane
G1 Y80.0 E16 F2000.0			      ; move back to the front (not completely - we want avoid the blob)



G92 E0.0                        ; setting extruder back to 0

M117 Printing...

; ***************************************************************************
; ***************************************************************************
