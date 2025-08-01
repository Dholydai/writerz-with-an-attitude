// Dholydai: 29 Mar 2025
//24 May 2025: add 0.2mm to X and 0.1mm to SH add angle cuts
//Measure top case: X=292.75 Y=102.25
//Bottom case: X=286.75 Y=96.25

//TXT
translate([102.5,72,0])
rotate([0,0,180])
linear_extrude(2.6)
text("60% Rgt",size=10,font="Microsoft Sans Serif");
translate([92,34,0])
rotate([0,0,180])
linear_extrude(2.6)
text("2Hnd",size=10,font="Microsoft Sans Serif");
//BASE
$fn=32;
difference(){
//Deck
    union() {
        translate([2,2,0])
            cube([141.575,92.25,2]);
        translate([2,0,0])
            cube([141.575,2,2]);
        translate([0,2,0])
            cube([2,92.25,2]);
        translate([2,94.25,0])
            cube([141.575,2,2]);    
        translate([2,2,0])
            cylinder(h=2,r1=2,r2=2);
        translate([2,94.25,0])
            cylinder(h=2,r1=2,r2=2);
//Sidewall
*translate([0,2,2])
    cube([3,36.125,7]);
*translate([0,58.125,2])
    cube([3,36.125,7]);
translate([0,2,2])
    cube([3,92.25,7]);
translate([2,93.25,2])
    cube([141.575,3,7]);
translate([2,0,2])
    cube([141.575,3,7]);
//SW Corners Outside   
translate([2,2,5.5])
    rotate([0,0,180]){
    rotate_extrude( angle=90)
        translate([1,0,0])
            square([2,7], center=true);
}
translate([2,94.25,5.5])
    rotate([0,0,90]){
    rotate_extrude( angle=90)
        translate([1,0,0])
            square([2,7], center=true);
}        
//SW Corners Inside   
translate([4,4,5.5])
    rotate([0,0,180]){
    rotate_extrude( angle=90)
        translate([2,0,0])
            square([2,7], center=true);
}
translate([4,92.55,5.5])
    rotate([0,0,90]){
    rotate_extrude( angle=90)
        translate([2,0,0])
            square([2,7], center=true);        
    }
//Screw Reenforcement
//Side
translate([3,29,2]){
    rotate([0,0,270])
             union() { 
            translate([6,0,0])
                cube([6,6,6]);            
polyhedron(points=[[0,0,0], [6,0,0], [6,6,0], [0,6,0], [6,0,6], [6,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
polyhedron(points=[[12,0,0], [18,0,0], [18,6,0], [12,6,0], [12,0,6], [12,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
  }
}          
translate([3,85.25,2]){
    rotate([0,0,270])
             union() { 
            translate([6,0,0])
                cube([6,6,6]);            
polyhedron(points=[[0,0,0], [6,0,0], [6,6,0], [0,6,0], [6,0,6], [6,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
polyhedron(points=[[12,0,0], [18,0,0], [18,6,0], [12,6,0], [12,0,6], [12,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
  }
}          
//SR Fore (swap)
translate([62.325,3,2]){
    rotate([0,0,0])
             union() { 
           translate([6,0,0])
                cube([6,6,6]);            
polyhedron(points=[[0,0,0], [6,0,0], [6,6,0], [0,6,0], [6,0,6], [6,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
polyhedron(points=[[12,0,0], [18,0,0], [18,6,0], [12,6,0], [12,0,6], [12,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
  }
}          
translate([92.325,3,2]){
    rotate([0,0,0])
             union() { 
           translate([6,0,0])
                cube([6,6,6]);            
polyhedron(points=[[0,0,0], [6,0,0], [6,6,0], [0,6,0], [6,0,6], [6,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
polyhedron(points=[[12,0,0], [18,0,0], [18,6,0], [12,6,0], [12,0,6], [12,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
  }
}          
//SR Aft (swap)
translate([80.325,93.25,2]){
    rotate([0,0,180])
             union() { 
            translate([6,0,0])
                cube([6,6,6]);            
polyhedron(points=[[0,0,0], [6,0,0], [6,6,0], [0,6,0], [6,0,6], [6,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
polyhedron(points=[[12,0,0], [18,0,0], [18,6,0], [12,6,0], [12,0,6], [12,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
  }
}          
translate([110.325,93.25,2]){
    rotate([0,0,180])
             union() { 
            translate([6,0,0])
                cube([6,6,6]);            
polyhedron(points=[[0,0,0], [6,0,0], [6,6,0], [0,6,0], [6,0,6], [6,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
polyhedron(points=[[12,0,0], [18,0,0], [18,6,0], [12,6,0], [12,0,6], [12,6,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
    );
  }
 }          
}
//Screw Holes Side
#translate([-1,20,6]){
    rotate([0,90,0]){
         cylinder(d=2.8,h=12);      
      }
}
#translate([-1,76.25,6]){
    rotate([0,90,0]){
         cylinder(d=2.8,h=12);      
      }
}
//Dimensions Top Case
//X-Front=89.25 X-Back=108.25 Y=102.25 
//Screw Holes Fore
#translate([71.325,-1,6]){
    rotate([-90,0,0]){
         cylinder(d=2.8,h=12);      
      }
}
#translate([101.325,-1,6]){
    rotate([-90,0,0]){
         cylinder(d=2.8,h=12);      
      }
}
//Screw Holes Aft
#translate([101.325,98,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);
    }
}     
#translate([71.325,98,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);      
    }
}
//Sidewall Notch for Stabilizer
translate([95.85,93.5,7.2])
    cylinder(h=2,r1=1.5,r2=2.5);
//Slop for D63
translate([3.25,89.1,7.2])
    cylinder(h=2,r1=1,r2=2);
translate([3.25,82.1,7.2])
    cylinder(h=2,r1=1,r2=2);

//Shallow angle sidewall cuts
//Cutter Fore (right end)
#translate ([143.525,-1,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0.1,0,0], [5,0,0], [5,5,0], [0.1,5,0], [0,0,10], [5,0,10], [5,5,10], [0,5,10]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );
//Cutter Aft (right end)            
#translate ([143.525,92.25,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0.1,0,0], [5,0,0], [5,5,0], [0.1,5,0], [0,0,10], [5,0,10], [5,5,10], [0,5,10]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );
  }
//Cross Ribs
translate([14.9,46.625,2])
    cube([123.375,2,4]);
translate([41.9,12.3,2])
    cube([2,72.25,4]);
translate([106.9,12.3,2])
    cube([2,72.25,4]);
    
//Mid Supports
translate([54,51.1,2])
    cylinder(h=6.9,r1=3,r2=3);
translate([111,51.1,2])
    cylinder(h=6.9,r1=3,r2=3);
//Patch for hole
#translate([108,48,2])
    cube(4);

//Mechanical Union
//Top Joint
translate([120.575,84.25,2]){
    rotate([0,0,-90])
        difference() {
            union() {   
                translate([6,14,0])
                    cube([12,9,6]);
//Right
polyhedron(points=[[18,14,0], [24,14,0], [24,23,0], [18,23,0], [18,14,6], [18,23,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
              );
//Left
polyhedron(points=[[0,14,0], [6,14,0], [6,23,0], [0,23,0], [6,14,6], [6,23,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
              );
//Flip Side             0         1          2         3         4          5
polyhedron(points=[[6,0,0], [18,0,0], [18,14,0], [6,14,0], [6,14,6], [18,14,6]],
    faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
              );
polyhedron(points=[[18,14,0], [18,0,0], [24,14,0], [18,14,6]],
    faces=[[0,1,2],[0,2,3],[0,3,1],[1,3,2]]
              );
polyhedron(points=[[0,14,0], [6,14,0], [6,0,0], [6,14,6]],
    faces=[[0,2,1],[0,1,3],[1,2,3],[0,3,2]]
              );
    }
     translate([12,0,3]){
     rotate([-90,0,0])
        #cylinder(d=3.2,h=26);
        
        }
    translate([12,0,3]){
     rotate([-90,0,0])
       #cylinder(d=6,h=14);
        
        }
    }
}
difference() {
//Mechanical Joint
//Bottom Joint
    translate([120.575,36,2]){
    rotate([0,0,-90])
        difference() {
            union() {   
                translate([6,14,0])
                    cube([12,9,6]);
//Right
polyhedron(points=[[18,14,0], [24,14,0], [24,23,0], [18,23,0], [18,14,6], [18,23,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
              );
//Left
polyhedron(points=[[0,14,0], [6,14,0], [6,23,0], [0,23,0], [6,14,6], [6,23,6]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
              );
//Flip Side             0         1          2         3         4          5
polyhedron(points=[[6,0,0], [18,0,0], [18,14,0], [6,14,0], [6,14,6], [18,14,6]],
    faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
              );
polyhedron(points=[[18,14,0], [18,0,0], [24,14,0], [18,14,6]],
    faces=[[0,1,2],[0,2,3],[0,3,1],[1,3,2]]
              );
polyhedron(points=[[0,14,0], [6,14,0], [6,0,0], [6,14,6]],
    faces=[[0,2,1],[0,1,3],[1,2,3],[0,3,2]]
              );
    }
     translate([12,0,3]){
     rotate([-90,0,0])
        #cylinder(d=2.8,h=26);
        
        }
    translate([12,0,3]){
     rotate([-90,0,0])
       *cylinder(d=6,h=14);
        
        }
    }  
}
 //Slop for Switch 48
#translate([143.575,69,7])
    cylinder(h=2,r1=2.5,r2=3);
#translate([138.575,69,7])
    cylinder(h=2,r1=1.5 ,r2=2);
}    
//Dimensions Top Case Left Raw
//Y=102.25 X-Back=102.25 X-Front=89.25
//YB=
//Measure Joint Screw Holes
*translate([143.775,74.85,4])
    cube([5,5,5]);
*translate([143.775,21.4,4])
//Offset? NO!!
cube([5,5,5]);
*translate([143.775,3,0])
    cube(8);
*translate([143.775,85.25,0])
    cube(8);
//Measure PCB
*translate ([0.4,0.4,9])
    cube ([142.875,95.25,2]);
*translate ([146.475,3.6,12])
    cube ([142.875,95.25,2]);
//Double X
*translate([146.475,0,0])
    cube([5,5,5]); 
*translate([289.35,0,12])
    cube([5,5,5]);

// End of Case  
*translate([292.75,0,0])
    cube([5,5,5]);
*translate([130,96.25,0])
    cube([5,5,5]);  
//Top Left Joints (for fit) Z=4.2
//Left Case Top: Done

//Top Mid Joints (for fit) Z=4.2
//Joints Mid Case Top: Done    