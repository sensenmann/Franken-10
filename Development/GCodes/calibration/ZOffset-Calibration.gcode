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

M104 S205 T0    ; set extruder temp
M104 S205 T1    ; set extruder temp
M140 S0   ; set bed temp


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


G90                                   ; use absolute positioning
M420 S Z2                             ; activate bed leveling
G21                                   ; set units to millimeters
M83                                   ; setting extruder to relative
G1 X50 Y50 F5000
G1 Z10 F500

M117 Waiting for Heating...
M109 S205 T0      ; wait for extruder 1 temp
M109 S205 T1      ; wait for extruder 2 temp


M400                  ;do marlin queue
M300 S1000 P200       ;beep
M0 Please feed both hotends and press knob to start

  M117 Moving Z to 0: Z=10
  G1 Z10 F50
  M400

  M117 Moving Z to 0: Z=9
  G1 Z9 F50
  M400

  M117 Moving Z to 0: Z=8
  G1 Z8 F50
  M400

  M117 Moving Z to 0: Z=7
  G1 Z7 F50
  M400

  M117 Moving Z to 0: Z=6
  G1 Z6 F50
  M400

  M117 Moving Z to 0: Z=5
  G1 Z5 F50
  M400

  M117 Moving Z to 0: Z=4
  G1 Z4 F50
  M400

  M117 Moving Z to 0: Z=3
  G1 Z3 F50
  M400

  M117 Moving Z to 0: Z=2
  G1 Z2 F50
  M400

  M117 Moving Z to 0: Z=1
  G1 Z1 F50
  M400

  M117 Moving Z to 0: Z=0
  G1 Z0 F50
  M400

G1 Z0.1 F50

  M117 Printing 1/5...
  G1 X50 F5000
  G1 E3 F10000                     ;un-retract
  G1 Y250 E12.73 F1000        ;line from Y=50 to Y=250
  G1 X55 E0.32 F1000          ;line from X=50 to X=55
  G1 Y50 E12.73 F1000         ;line from Y=250 to Y=50
  G1 E-3 F10000                   ;retract
  
    M400                  ;do marlin queue
    M300 S1000 P200       ;beep
    M0 Adjust Z and press to continue
    
  M117 Printing 2/5...
  G1 X70 F5000
  G1 E3 F10000                     ;un-retract
  G1 Y250 E12.73 F1000        ;line from Y=50 to Y=250
  G1 X75 E0.32 F1000          ;line from X=70 to X=75
  G1 Y50 E12.73 F1000         ;line from Y=250 to Y=50
  G1 E-3 F10000                   ;retract
  
    M400                  ;do marlin queue
    M300 S1000 P200       ;beep
    M0 Adjust Z and press to continue
    
  M117 Printing 3/5...
  G1 X90 F5000
  G1 E3 F10000                     ;un-retract
  G1 Y250 E12.73 F1000        ;line from Y=50 to Y=250
  G1 X95 E0.32 F1000          ;line from X=90 to X=95
  G1 Y50 E12.73 F1000         ;line from Y=250 to Y=50
  G1 E-3 F10000                   ;retract
  
    M400                  ;do marlin queue
    M300 S1000 P200       ;beep
    M0 Adjust Z and press to continue
    
  M117 Printing 4/5...
  G1 X110 F5000
  G1 E3 F10000                     ;un-retract
  G1 Y250 E12.73 F1000        ;line from Y=50 to Y=250
  G1 X115 E0.32 F1000          ;line from X=110 to X=115
  G1 Y50 E12.73 F1000         ;line from Y=250 to Y=50
  G1 E-3 F10000                   ;retract
  
    M400                  ;do marlin queue
    M300 S1000 P200       ;beep
    M0 Adjust Z and press to continue
    
  M117 Printing 5/5...
  G1 X130 F5000
  G1 E3 F10000                     ;un-retract
  G1 Y250 E12.73 F1000        ;line from Y=50 to Y=250
  G1 X135 E0.32 F1000          ;line from X=130 to X=135
  G1 Y50 E12.73 F1000         ;line from Y=250 to Y=50
  G1 E-3 F10000                   ;retract
  
M400                  ;do marlin queue
M117 Finished!
T0
G1 Y300 Z10 F5000

M104 T0 S0        ; turn off extruder 1 temperature
M104 T1 S0        ; turn off extruder 2 temperature

M605 S1
G28 X
M18