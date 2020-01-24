<?

$gcode = '';

$initx1 = 50;
$inity1 = 100;

$initx2 = 290;
$inity2 = 200;

$startx = $initx1;
$starty = 200;

$stepsx = 20;
$stepsy1 = 10;
$stepsy2 = 9.9;


$endy_front = $starty-50;
$endy_bottom = $starty+50;
$endx = $startx+($stepsx*5);    // 3 Lininen auf der X-Achse


$travel_speed = 10000;
$print_speed = 1000;
$retract_speed = 10000;
$retract_length = 5;
$blob_length = 30;

$z_height = 0.2;
$nozzle = 0.4;
$extrusion_per_mm = $z_height * $nozzle / ( (M_PI / 4) * pow($nozzle, 2)) / 10;
$nozzle_lift = 3;


// echo $extrusion_per_mm . "\n";


$homing =file_get_contents('Homing.gcode');
$homing = str_replace('[first_layer_temperature]', '205', $homing);
$homing = str_replace('[first_layer_bed_temperature]', '0', $homing);

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


G90                                   ; use absolute positioning
M420 S Z2                             ; activate bed leveling
G21                                   ; set units to millimeters
M83                                   ; setting extruder to relative
T0

G28 XZ
";


// Black Line
$gcode .= "

G1 X$initx1 Y$inity1 Z$z_height F$travel_speed         ;move to $initx1/$inity1/0.1 (fast)
G1 E$retract_length F$retract_speed                     ;un-retract
G1 E$blob_length F400				               ;make a blob
G1 X$startx Y$starty E".round(($starty - $inity1)*$extrusion_per_mm, 2)." F$print_speed        ;line from Y=$inity1 to Y=$endy_bottom
G1 E-$retract_length F$retract_speed                   ;retract
";

for ($y = $starty; $y <= $endy_bottom; $y+=$stepsy1) {
  $gcode .= "\n\n";
  for ($x = $startx; $x <= $endx; $x+=($stepsx*2)) {
      $x2 = $x+$stepsx;
      $gcode .= "
G1 X$x Y$y F$travel_speed            ;move fast to X=$x Y=$y
G1 Z$z_height F500                    ;lower nozzle (if needed)
G1 E$retract_length F$retract_speed                    ;un-retract
G1 E".round(($x2 - $x)*$extrusion_per_mm, 2)." X$x2 F$print_speed              ;********* extrude $x -> $x2 ********
G1 E-$retract_length F$retract_speed                   ;retract";
  }
  $gcode .= "
G1 Z$nozzle_lift F500                    ;lift nozzle";
}

$gcode .= "


***** FRONT ****";

for ($y = ($starty-$stepsy1); $y >= $endy_front; $y-=$stepsy1) {
  $gcode .= "\n\n";
  for ($x = $startx; $x <= $endx; $x+=($stepsx*2)) {
      $x2 = $x+$stepsx;
      $gcode .= "
G1 X$x Y$y F$travel_speed             ;move fast to X=$x Y=$y
G1 Z$z_height F500                    ;lower nozzle (if needed)
G1 E$retract_length F$retract_speed                    ;un-retract
G1 E".round(($x2 - $x)*$extrusion_per_mm, 2)." X$x2 F$print_speed             ;********* extrude $x -> $x2 ********
G1 E-$retract_length F$retract_speed                   ;retract";
  }
  $gcode .= "
G1 Z$nozzle_lift F500                    ;lift nozzle";
}


$gcode .= "\n\n\n; **************************\n\n";


// White Line
$gcode .= "T1

G1 X$initx1 Y$endy_bottom Z$z_height F$travel_speed         ;move to X=$endx Y=$endy_front (fast)
G1 E$retract_length F$retract_speed                     ;un-retract
G1 E$blob_length F400				               ;make a blob
G1 X$initx1 Y$starty E".round(($endy_bottom - $inity2)*$extrusion_per_mm, 2)." F$print_speed        ;line from Y=$endy_bottom to Y=$starty
";

for ($y = $starty; $y <= $endy_bottom; $y+=$stepsy2) {
  $gcode .= "\n\n";
  for ($x = $startx+$stepsx; $x <= $endx; $x+=($stepsx*2)) {
      $x2 = $x+$stepsx;
      $gcode .= "
G1 X$x Y$y F$travel_speed            ;move fast to X=$x Y=$y
G1 Z$z_height F500                    ;lower nozzle (if needed)
G1 E$retract_length F$retract_speed                    ;un-retract
G1 E".round(($x2 - $x)*$extrusion_per_mm, 2)." X$x2 F$print_speed              ;********* extrude $x -> $x2 ********
G1 E-$retract_length F$retract_speed                   ;retract";
  }
  $gcode .= "
G1 Z$nozzle_lift F500                    ;lift nozzle";
}

$gcode .= "


***** FRONT ****";

for ($y = ($starty-$stepsy1); $y >= $endy_front; $y-=$stepsy2) {
  $gcode .= "\n\n";
  for ($x = $startx+$stepsx; $x <= $endx; $x+=($stepsx*2)) {
      $x2 = $x+$stepsx;
      $gcode .= "
G1 X$x Y$y F$travel_speed             ;move fast to X=$x Y=$y
G1 Z$z_height F500                    ;lower nozzle (if needed)
G1 E$retract_length F$retract_speed                    ;un-retract
G1 E".round(($x2 - $x)*$extrusion_per_mm, 2)." X$x2 F$print_speed             ;********* extrude $x -> $x2 ********
G1 E-$retract_length F$retract_speed                   ;retract";
  }
  $gcode .= "
G1 Z$nozzle_lift F500                    ;lift nozzle";
}




$gcode .= "
T0
G1 Y300 F$travel_speed";

$fh = fopen('Dual-Calibration.gcode', 'w');
fwrite($fh, $gcode);
fclose($fh);

?>
