<?

$gcode = '';

$initx1 = 10;
$inity1 = 30;

$initx2 = 290;
$inity2 = $inity1;

$startx = 150;
$starty = $inity1;

$stepsx1 = 10;
$stepsx2 = 9.9;
$stepsy = 20;


$endx_left = $startx-50;
$endx_right = $startx+50;
$endy = $starty+($stepsy*3);    // 3 Lininen auf der Y-Achse


$travel_speed = 10000;
$print_speed = 1000;
$retract_speed = 10000;
$retract_length = 3;
$blob_length = 30;

$z_height = 0.2;
$nozzle = 0.4;
$extrusion_per_mm = $z_height * $nozzle / ( (M_PI / 4) * pow($nozzle, 2)) / 10;

// echo $extrusion_per_mm . "\n";


$homing =file_get_contents('Homing.gcode');
$homing = str_replace('[first_layer_temperature]', '205', $homing);
$homing = str_replace('[first_layer_bed_temperature]', '60', $homing);

// $gcode .= $homing;


$gcode .= "

; home all axes
M605 S0                               ; full controll (so the toolheads don't park!)
M117 Homing X+Y Axis...
G91                                   ; use relative positioning
T0
G0 X10 Y20 F5000                      ; move left extruder + buildplate a bit away
T1
M605 S1                               ; reset to autopark
G0 X-10 F5000                         ; move right extruder a bit away
M605 S0                               ; full controll (so the toolheads don't park!)
T0
M605 S1                               ; reset to autopark


G28 XZ
G90                                   ; use absolute positioning
M420 S Z2                             ; activate bed leveling
G21                                   ; set units to millimeters
M83                                   ; setting extruder to relative
T0
";


// Black Line
$gcode .= "

G1 X$initx1 Y$inity1 Z$z_height F$travel_speed         ;move to $initx1/$inity1/0.1 (fast)
G1 E$retract_length F$retract_speed                     ;un-retract
G1 E$blob_length F400				               ;make a blob
G1 X$startx Y$starty E".round(($startx - $initx1)*$extrusion_per_mm, 2)." F$print_speed        ;line from X=$initx1 to X=$startx
G1 E-$retract_length F$retract_speed                   ;retract";

for ($x = $startx; $x >= $endx_left; $x-=$stepsx1) {
  $gcode .= "\n\n";
  for ($y = $starty; $y <= $endy; $y+=($stepsy*2)) {
      $y2 = $y+$stepsy;
      $gcode .= "
G1 X$x Y$y F$travel_speed             ;move fast to X=$x Y=$y
G1 Z$z_height F500                    ;lower nozzle (if needed)
G1 E$retract_length F$retract_speed                    ;un-retract
G1 E".round(($y2 - $y)*$extrusion_per_mm, 2)." Y$y2 F$print_speed            ; ********* extrude $y -> $y2 ********
G1 E-$retract_length F$retract_speed                   ;retract";
  }
  $gcode .= "
G1 Z1 F500                    ;lift nozzle";
}

for ($x = ($startx+$stepsx1); $x <= $endx_right; $x+=$stepsx1) {
  $gcode .= "\n\n";
  for ($y = $starty; $y <= $endy; $y+=($stepsy*2)) {
      $y2 = $y+$stepsy;
      $gcode .= "
G1 X$x Y$y F$travel_speed             ;move fast to X=$x Y=$y
G1 Z$z_height F500                    ;lower nozzle (if needed)
G1 E$retract_length F$retract_speed                    ;un-retract
G1 E".round(($y2 - $y)*$extrusion_per_mm, 2)." Y$y2 F$print_speed            ; ********* extrude $y -> $y2 ********
G1 E-$retract_length F$retract_speed                   ;retract";
  }
  $gcode .= "
G1 Z1 F500                    ;lift nozzle";
}


$gcode .= "\n\n\n; **************************\n\n";


// White Line
$gcode .= "T1

G1 X$initx2 Y$inity2 Z$z_height F$travel_speed         ;move to $initx2/$inity2/0.1 (fast)
G1 E$retract_length F$retract_speed                     ;un-retract
G1 E$blob_length F400				               ;make a blob
G1 X$startx Y$starty E".round(($initx2 - $startx)*$extrusion_per_mm, 2)." F$print_speed        ;line from X=$initx2 to X=$startx
G1 E-$retract_length F$retract_speed                   ;retract
";

for ($x = $startx; $x >= $endx_left; $x-=$stepsx2) {
  $gcode .= "\n\n";
  for ($y = $starty+$stepsy; $y <= $endy; $y+=($stepsy*2)) {
      $y2 = $y+$stepsy;
      $gcode .= "
G1 X$x Y$y F$travel_speed             ;move fast to X=$x Y=$y
G1 Z$z_height F500                    ;lower nozzle (if needed)
G1 E$retract_length F$retract_speed                    ;un-retract
G1 E".round(($y2 - $y)*$extrusion_per_mm, 2)." Y$y2 F$print_speed            ; ********* extrude $y -> $y2 ********
G1 E-$retract_length F$retract_speed                   ;retract";
  }
  $gcode .= "
G1 Z1 F500                    ;lift nozzle";
}

for ($x = ($startx+$stepsx1); $x <= $endx_right+1; $x+=$stepsx2) {
  $gcode .= "\n\n";
  for ($y = $starty+$stepsy; $y <= $endy; $y+=($stepsy*2)) {
      $y2 = $y+$stepsy;
      $gcode .= "
G1 X$x Y$y F$travel_speed             ;move fast to X=$x Y=$y
G1 Z$z_height F500                    ;lower nozzle (if needed)
G1 E$retract_length F$retract_speed                    ;un-retract
G1 E".round(($y2 - $y)*$extrusion_per_mm, 2)." Y$y2 F$print_speed            ; ********* extrude $y -> $y2 ********
G1 E-$retract_length F$retract_speed                   ;retract";
  }
  $gcode .= "
G1 Z1 F500                    ;lift nozzle";
}



$gcode .= "\n\n\n; **************************\n\n";



$gcode .= "
T0
G1 Y300 F$travel_speed";

$fh = fopen('Dual-Calibration.gcode', 'w');
fwrite($fh, $gcode);
fclose($fh);

?>
