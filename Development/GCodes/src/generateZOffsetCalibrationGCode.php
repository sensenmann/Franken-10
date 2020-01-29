<?

$slow_speed = 50;
$travel_speed = 5000;
$print_speed = 1000;
$retract_speed = 10000;
$retract_length = 3;
$blob_length = 30;

$z_height = 0.2;
$nozzle = 0.4;
$extrusion_per_mm = $z_height * $nozzle / ( (M_PI / 4) * pow($nozzle, 2)) / 10;



$homing =file_get_contents('homing/templates/Homing-Duplicate.gcode');
$homing = str_replace('[first_layer_temperature]', '205', $homing);
$homing = str_replace('[first_layer_bed_temperature]', '0', $homing);

$gcode = $homing;



$gcode .= "

G90                                   ; use absolute positioning
M420 S Z2                             ; activate bed leveling
G21                                   ; set units to millimeters
M83                                   ; setting extruder to relative
G1 X50 Y50 F$travel_speed
G1 Z10 F500

M117 Waiting for Heating...
M109 S205 T0      ; wait for extruder 1 temp
M109 S205 T1      ; wait for extruder 2 temp


M400                  ;do marlin queue
M300 S1000 P200       ;beep
M0 Please feed both hotends and press knob to start
";

for ($z=10; $z>=0; $z--) {
  $gcode .= "
  M117 Moving Z to 0: Z=$z
  G1 Z$z F$slow_speed
  M400
";
}

$gcode .= "
G1 Z0.1 F$slow_speed
";

for ($i = 1; $i <= 5; $i++) {
  $x1 = 30 + (20*$i);
  $x2 = 35 + (20*$i);

  $gcode .="
  M117 Printing $i/5...
  G1 X$x1 F$travel_speed
  G1 E$retract_length F$retract_speed                     ;un-retract
  G1 Y250 E".round((250 - 50)*$extrusion_per_mm, 2)." F$print_speed        ;line from Y=50 to Y=250
  G1 X$x2 E".round((5)*$extrusion_per_mm, 2)." F$print_speed          ;line from X=$x1 to X=$x2
  G1 Y50 E".round((250 - 50)*$extrusion_per_mm, 2)." F$print_speed         ;line from Y=250 to Y=50
  G1 E-$retract_length F$retract_speed                   ;retract
  ";

  if ($i != 5) {
    $gcode .= "
    M400                  ;do marlin queue
    M300 S1000 P200       ;beep
    M0 Adjust Z and press to continue
    ";
  }

}


$gcode .= "
M400                  ;do marlin queue
M117 Finished!
T0
G1 Y300 Z10 F$travel_speed

;M140 S0           ; turn off bed temperature
;M104 T0 S0        ; turn off extruder 1 temperature
;M104 T1 S0        ; turn off extruder 2 temperature

M605 S1
G28 X
M18";


$fh = fopen('../calibration/ZOffset-Calibration.gcode', 'w');
fwrite($fh, $gcode);
fclose($fh);

$gcode_marlin = $gcode;
$gcode_marlin = preg_replace('/;.*/', '', $gcode_marlin);   // removing comments
$gcode_marlin = preg_replace('~^\ +|\ +$~m', '', $gcode_marlin);   // trimming lines
$gcode_marlin = preg_replace('/\n\s*/', "\n", $gcode_marlin);   // removing empty lines
$gcode_marlin = str_replace("\n", "\\n", $gcode_marlin);

$fh = fopen('../calibration/ZOffset-Calibration.marlin.gcode', 'w');
fwrite($fh, $gcode_marlin);
fclose($fh);

?>
