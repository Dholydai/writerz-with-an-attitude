// Dholydai: 28 Mar 2025

$fn=32;

//Reset and Run Covers
translate([0,0,1.25])
rotate([0,0,0]){
     #translate([10,10,0])
         cylinder(d=3.95,h=1.75);
     }

translate([0,0,1.25])     
rotate([0,0,0]){
     #translate([18.8,10,0])
         cylinder(d=3.95,h=1.75);
     }
translate([7.7,7.8,0])
cube([13.4,4.4,1.25]);
