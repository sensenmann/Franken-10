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

;only-dual-start
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
;only-dual-end

G92 E0.0                        ; setting extruder back to 0

M117 Printing...

; ***************************************************************************
; ***************************************************************************
