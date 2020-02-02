<?

include "calibration/class.CalibrationX.php";

$homing = file_get_contents('../slicer/dual/Startcode.gcode');
$homing = str_replace('[first_layer_temperature]', '205', $homing);
$homing = str_replace('[first_layer_bed_temperature]', '60', $homing);

$gcode = $homing;


$gcode .= CalibrationX::generateGCode();

$gcode .= "
T0
T1
T0

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


G28 XYZ
G90                                   ; use absolute positioning
M420 S Z2                             ; activate bed leveling
G21                                   ; set units to millimeters
M83                                   ; setting extruder to relative
";

$gcode .= CalibrationX::generateGCode(100);



$gcode .= "
T0
G1 Y300 F$travel_speed";

$fh = fopen('../calibration/Dual-Calibration.gcode', 'w');
fwrite($fh, $gcode);
fclose($fh);

$gcode_marlin = $gcode;
$gcode_marlin = preg_replace('/;.*/', '', $gcode_marlin);   // removing comments
$gcode_marlin = preg_replace('~^\ +|\ +$~m', '', $gcode_marlin);   // trimming lines
$gcode_marlin = preg_replace('/\n\s*/', "\n", $gcode_marlin);   // removing empty lines
$gcode_marlin = str_replace("\n", "\\n", $gcode_marlin);

$fh = fopen('../calibration/Dual-Calibration.marlin.gcode', 'w');
fwrite($fh, $gcode_marlin);
fclose($fh);

?>
