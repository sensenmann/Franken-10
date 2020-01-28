<?
$homing = file_get_contents('homing/templates/Homing.gcode');
$homing_single = $homing;
$homing_duplicate = file_get_contents('homing/templates/Homing-Duplicate.gcode');

$purgeline = file_get_contents('homing/templates/Purgeline.gcode');
$purgeline_single = $purgeline;

$stealth = file_get_contents('homing/templates/Enable-Stealthmode.gcode');

$end = file_get_contents('homing/templates/End.gcode');
$end_single = $end;

for ($i=0; $i<5; $i++) {
  $homing_single = preg_replace('/;only-dual-start((.|\n)*);only-dual-end/i', '', $homing_single);
  $purgeline_single = preg_replace('/;only-dual-start([\S\s]*?);only-dual-end/i', '', $purgeline_single);
  $end_single = preg_replace('/;only-dual-start([\S\s]*?);only-dual-end/i', '', $end_single);
}

$homing = str_replace(';only-dual-start', '', $homing);
$homing = str_replace(';only-dual-end', '', $homing);
$purgeline = str_replace(';only-dual-start', '', $purgeline);
$purgeline = str_replace(';only-dual-end', '', $purgeline);
$end = str_replace(';only-dual-start', '', $end);
$end = str_replace(';only-dual-end', '', $end);



// Single:
$gcode_start_single = $homing_single . "\n\n" . $stealth . "\n\n" .$purgeline_single;
$gcode_end_single = $end_single;

// Dual:
$gcode_start_dual = $homing . "\n\n" . $stealth . "\n\n" .$purgeline;
$gcode_end_dual = $end;

// Duplicate:
$gcode_start_duplicate = $homing_duplicate . "\n\n" . $stealth . "\n\n" .$purgeline_single;
$gcode_end_duplicate = $end;


// Single:
$fh = fopen('../slicer/single/Startcode.gcode', 'w');
fwrite($fh, $gcode_start_single);
fclose($fh);
$fh = fopen('../slicer/single/End.gcode', 'w');
fwrite($fh, $gcode_end_single);
fclose($fh);

// Dual:
$fh = fopen('../slicer/dual/Startcode.gcode', 'w');
fwrite($fh, $gcode_start_dual);
fclose($fh);
$fh = fopen('../slicer/dual/End.gcode', 'w');
fwrite($fh, $gcode_end_dual);
fclose($fh);

// Duplicate:
$fh = fopen('../slicer/duplicate/Startcode.gcode', 'w');
fwrite($fh, $gcode_start_duplicate);
fclose($fh);
$fh = fopen('../slicer/duplicate/End.gcode', 'w');
fwrite($fh, $gcode_end_duplicate);
fclose($fh);

?>
