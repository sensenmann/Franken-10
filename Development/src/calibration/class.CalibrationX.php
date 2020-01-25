<?

class CalibrationX {


  function generateGCode($offsety = 0) {
    $initx1 = 10;
    $inity1 = 30 + $offsety;

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





    // Black Line
    $gcode .= "
    T0

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

    return $gcode;
  }

}




?>
