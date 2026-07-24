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
     #translate([19.5,10,0])
         cylinder(d=3.95,h=1.75);
     }
translate([7.5,7.7,0])
cube([14.5,4.6,1.25]);
