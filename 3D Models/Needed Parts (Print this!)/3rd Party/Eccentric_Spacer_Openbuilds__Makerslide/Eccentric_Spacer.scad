// Eccentric Spacer - Makerslice compatible
// as per http://www.buildlog.net/sm_laser/drawings/b18001_rev_3.pdf
//
// CC-BY-SA Licenced under Creative Commons-Share Alike 3.0 Licence
//
//
// modified by @makevoid for more generic m5 spacer - metric 
//
// http://openbuildspartstore.com/eccentric-spacers/
//
// http://cdn1.bigcommerce.com/server2300/itwgldve/products/97/images/1038/Eccentric_Spacer_Version_3__55794.1392409357.1280.1280.jpg?c=1

tol = 0.3; // tolerance, you know, plastic expands

i = 25.4;						// inch
fs = 0.5;						// used for $fs
// mEs = m-makerslide E-Eccentric s-Spacer
mEsHexH =   6.35;			// Hex Height 1/4"
mEsRoundH = 2.50;			// Roung Height - sits inside hole
mEsTotH =   mEsHexH + mEsRoundH;	// Total Height
mEsRoundD = 7.64;			// Round Diameter // maxed
mEsHoleD =  5.0 + tol;		// Hole Diameter based on M5
mEsHoleO =  0.79;			// Hole Offset from center
mEsHexD  =  9.87-tol;		// Hole Hex Diameter M6 wrench


//mEsRoundD = 9;			// Round Diameter // maxed
//mEsHexD  =  12.85-tol;		// Hole Hex Diameter M8 wrench


module spacer() {


  difference() {
	 union() {
		cylinder(r=mEsHexD/2,h=mEsHexH,$fn=6);
	 	cylinder(r=mEsRoundD/2,h=mEsTotH,$fs=fs);
	 } // u
		translate([0,mEsHoleO,-0.1]) 
         cylinder(r=mEsHoleD/2,h=mEsTotH+0.2,$fs=fs);
  } // d
			
}

spacer();
translate([ 0, 16]) spacer();
translate([16,  0]) spacer();
translate([16, 16]) spacer();