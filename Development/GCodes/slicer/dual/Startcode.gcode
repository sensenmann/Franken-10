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
G0 X5 Y20 F5000                       ; move left extruder + buildplate a bit away

T1
M605 S1                               ; reset to autopark
G0 X-5 F5000                          ; move right extruder a bit away
M605 S0                               ; full controll (so the toolheads don't park!)
T0

G28
M605 S1                               ; reset to autopark
G27                                   ; park nozzle
G90                                   ; use absolute positioning
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
G1 Z10.0 F500                         ; lift nozzle

M117 Waiting for Heating...
M190 S[first_layer_bed_temperature]     ; wait for bed temp
M109 S[first_layer_temperature] T0      ; wait for extruder 1 temp

M109 S[first_layer_temperature] T1      ; wait for extruder 2 temp


M117 Purge-Line for E1...

T0
M83                             ; setting extruder to relative
G1 X5.0 Y35.0 Z0.4 F5000.0		  ; go start of print area
G1 E30 F400				              ; make a blob
G1 Y80.0 E7 Z0.3 F900.0			    ; go slowly backwards and down
G1 Y260.0 E20 Z0.2 F2000.0		  ; go to end of plate and lower z
G1 X6.0 F2000.0				          ; move to right for 2nd lane
G1 Y80.0 E16 F2000.0			      ; move back to the front (not completely - we want avoid the blob)


M117 Purge-Line for E2...
T1
G92 E0;                         ; setting extruder back to 0 (for relative extruding)
G1 X285.0 Y35.0 Z0.4 F5000.0		; go start of print area
G1 E30 F400				              ; make a blob
G1 Y80.0 E7 Z0.3 F900.0			    ; go slowly backwards and down
G1 Y260.0 E20 Z0.2 F2000.0		  ; go to end of plate and lower z
G1 X286.0 F2000.0				        ; move to right for 2nd lane
G1 Y80.0 E16 F2000.0			      ; move back to the front (not completely - we want avoid the blob)
T0                              ; parking extruder 2


G92 E0.0                        ; setting extruder back to 0

; ***************************************************************************
; ***************************************************************************
