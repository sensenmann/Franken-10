; ***************************************************************************
; ************************  SINGLE PURGE LINE  ******************************
; ***************************************************************************
G1 Z1.0 F500                         ; lift nozzle

M117 Waiting for Heating...
M190 S[first_layer_bed_temperature]     ; wait for bed temp
M109 S[first_layer_temperature] T0      ; wait for extruder 1 temp

M117 Purge-Line for E1...

T0
M83                             ; setting extruder to relative
G1 X5.0 Y35.0 Z0.4 F5000.0		  ; go start of print area
G1 E30 F400				              ; make a blob
G1 Y80.0 E7 Z0.3 F900.0			    ; go slowly backwards and down
G1 Y260.0 E20 Z0.2 F2000.0		  ; go to end of plate and lower z
G1 X6.0 F2000.0				          ; move to right for 2nd lane
G1 Y80.0 E16 F2000.0			      ; move back to the front (not completely - we want avoid the blob)


T1                              ; parking extruder 1
T0                              ; parking extruder 1
G92 E0.0                        ; setting extruder back to 0

; ***************************************************************************
; ***************************************************************************
