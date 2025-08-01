// Dholydai: 05 May 2025 10mm Z and X=143.20833...
// Move USB port 0.3mm inboard > X
//21 May 2025 angle cuts and 0.6mm ext X=143.8

// Txt
translate([45,36,0])
rotate([0,0,0])
linear_extrude(2.6)
text("Max Mid",size=10,font="Microsoft Sans Serif");
translate([55.3,91,0])
rotate([0,0,0])
linear_extrude(2.6)
text("2Hnd",size=10,font="Microsoft Sans Serif");
//BASE

$fn=32;
difference(){
//Deck
    union() {
        translate([0,2,0])
            cube([143.8,130.35,2]);
        translate([0,0,0])
            cube([143.8,2,2]);
        translate([0,132.35,0])
            cube([143.8,2,2]);    
//Sidewall
translate([0,131.35,2])
    cube([85.8,3,8]);
translate([105.8,131.35,2])
    cube([38,3,8]);
translate([0,0,2])
    cube([143.8,3,8]);
// Center Support
translate([66.1,5,2])
    cube([13,6,7.9]);
translate([66.1,5,9.9])
    #cube([13,3,2]);    
//Screw Reenforcement
//SR Fore C
translate([33.625,3,2]){
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
//SR Fore D          
translate([63.625,3,2]){
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
//SR Aft C
translate([56.3875,131.35,2]){
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
//SR Aft D          
translate([86.3875,131.35,2]){
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
//Dimensions Top Case (Half-Wide)
//X=177.3312 Y=126.0625
//Screw Holes Fore C
#translate([42.625,-1,6]){
    rotate([-90,0,0]){
         cylinder(d=2.8,h=12);      
  }
}
//SH Fore D
#translate([72.75,-1,6]){
    rotate([-90,0,0]){
         cylinder(d=2.8,h=14);      
  }
}
//Screw Holes Aft C
#translate([47.3875,136,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);
  }
}
//SH Aft D     
#translate([77.3875,136,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);      
      }
   }
//Shallow angle sidewall cuts
//Cutter Fore (left end)
#translate ([-4.95,-1,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0,0,0], [4.9,0,0], [4.9,5,0], [0,5,0], [0,0,10], [5,0,10], [5,5,10], [0,5,10]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );
//Cutter Aft (left end)            
#translate ([-4.95,130.35,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0,0,0], [4.9,0,0], [4.9,5,0], [0,5,0], [0,0,10], [5,0,10], [5,5,10], [0,5,10]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );
//Cutter Fore (right end)
#translate ([143.75,-1,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0.1,0,0], [5,0,0], [5,5,0], [0.1,5,0], [0,0,10], [5,0,10], [5,5,10], [0,5,10]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );
//Cutter Aft (right end)            
#translate ([143.75,130.35,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0.1,0,0], [5,0,0], [5,5,0], [0.1,5,0], [0,0,10], [5,0,10], [5,5,10], [0,5,10]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );
}
//Cross Ribs
translate([15.7,66.175,2])
    cube([110,2,4]);
translate([34.8,12.3,2])
    cube([2,109.75,4]);
translate([107.8,12.3,2])
    cube([2,109.75,4]);
//Mid Supports
translate([29.4,66.3,2])
    cylinder(h=7.9,r1=3,r2=3);
translate([111.8,66.3,2])
    cylinder(h=7.9,r1=3,r2=3);
//PCB Bottom Mid   
translate([22.1,5,2])
    cube([13,6,7.9]);
translate([22.1,5,9.9])
    #cube([13,3,2]);
translate([110.1,5,2])
    cube([13,6,7.9]);
translate([110.1,5,9.9])
    #cube([13,3,2]);    
//Measure U1 Gap
*translate([85.8,134,4])
cube(4);
*translate([105.8,134,4])
cube(4);
//USB Threshold
translate([85.8,131.35,2])
    cube([20,3,1]);           
translate([89.15,134.35,0])
    cube([13.3,3,3.5]);
translate([89.15,134.35,3.5])
    polyhedron(points=[[0,0,0], [13.3,0,0], [13.3,3,0], [0,3,0], [2,0,2], [11.3,0,2]],
    faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
              );       
//Mechanical Union Left !!!
//Top Joint
translate([23,89.35,2]){
    rotate([0,0,90])
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
//Flip                  0       1           2          3        4           5
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
//Bottom Joint
translate([23,21,2]){
    rotate([0,0,90])
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
//Flip                  0       1           2          3        4           5
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

//Mechanical Union Right ###
//Top Joint
translate([120.8,113.35,2]){
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
//Flip                  0       1           2          3        4           5
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
//Bottom Joint
translate([120.8,45,2]){
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
//Flip                  0       1           2          3        4           5
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
//Dimensions 325 Top Comp Case
//X=311.8 Y=140.35
//Bottom Case Half
//X=152.9 Y=134.35
//Measure Bottom Case
*translate([152.9,-2,0])
    cube(4);
*translate([150,134.35,0])
    cube(4);  
//Screw holes:Y=0/140.35 
   //Fore: X=104.25, 188.525 
   //Aft: X=113.725, 198.05
//Difference 60% to Comp
   //X=2U 38.1
   //Y=1U 19.05 Half=9.525

//Measure Joint Screw Holes
*translate([141.875,101.35,5])
    cube(4);
*translate([-4,101.35,5])
    cube(4);
*translate([141.875,33,5])
    cube(4);
//Measure PCB
*translate ([0.4,0.4,9])
    cube ([142.875,95.25,2]);
*translate ([146.475,3.6,12])
    cube ([142.875,95.25,2]);
//Double X
*translate([289.35,0,12])
    cube(4);
// End of Case
*translate([292.75,0,0])
    cube(4);
*translate([292.75,0,0])
    cube(4);  
//Top Left Joints (for fit) Z=4.2
//Left Case Top: Done

//Top Mid Joints (for fit) Z=4.2
//Joints Mid Case Top: Done    