T0
G1 X-83 Y300 F4000

M140 S0           ; turn off bed temperature
M104 T0 S0        ; turn off extruder 1 temperature
;only-dual-start
M104 T1 S0        ; turn off extruder 2 temperature
;only-dual-end

M18               ; disable motors

M107 P0           ; turn off fan 1
M107 P1           ; turn off fan 2

M300 S1000 P50	;First beep
M300 S0 P250	;Wait
M300 S1000 P50	;Second beep
