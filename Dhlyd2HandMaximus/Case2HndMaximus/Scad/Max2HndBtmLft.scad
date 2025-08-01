// Dholydai: 05 May 2025 10mm Z and X=143.20833...

translate([51,36,0])
rotate([0,0,0])
linear_extrude(2.6)
text("Max Lft",size=10,font="Microsoft Sans Serif");
translate([57,91,0])
rotate([0,0,0])
linear_extrude(2.6)
text("2Hnd",size=10,font="Microsoft Sans Serif");

//BASE
$fn=32;

difference(){
//Deck
    union() {
        translate([2,2,0])
            cube([141.2,130.35,2]);
        translate([2,0,0])
            cube([141.2,2,2]);   
        translate([2,132.35,0])
            cube([141.2,2,2]);
        translate([0,2,0])
            cube([2,130.35,2]);    
        translate([2,2,0])
            cylinder(h=2,r1=2,r2=2);
        translate([2,132.35,0])
            cylinder(h=2,r1=2,r2=2);
//Sidewall
translate([0,2,2])
    cube([3,130.35,8]);
translate([2,131.35,2])
    cube([141.2,3,8]);
translate([2,0,2])
    cube([141.2,3,8]);
//SW Corners Outside   
translate([2,2,6])
    rotate([0,0,180]){
    rotate_extrude( angle=90)
        translate([1,0,0])
            square([2,8], center=true);
}
translate([2,132.35,6])
    rotate([0,0,90]){
    rotate_extrude( angle=90)
        translate([1,0,0])
            square([2,8], center=true);
}        
//SW Corners Inside   
translate([4,4,6])
    rotate([0,0,180]){
    rotate_extrude( angle=90)
        translate([2,0,0])
            square([2,8], center=true);
}
translate([4,130.3125,6])
    rotate([0,0,90]){
    rotate_extrude( angle=90)
        translate([2,0,0])
            square([2,8], center=true);        
    }
//Screw Reenforcement
//Side
translate([3,41,2]){
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
translate([3,111.3125,2]){
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
//SR Fore A
translate([62.225,3,2]){
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
//SR Fore B          
translate([92.225,3,2]){
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
//SR Aft A
translate([89.755,131.35,2]){
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
//SR Aft B         
translate([119.755,131.35,2]){
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
#translate([-1,32,6]){
    rotate([0,90,0]){
         cylinder(d=2.8,h=12);      
      }
}
#translate([-1,102.3125,6]){
    rotate([0,90,0]){
         cylinder(d=2.8,h=12);      
      }
}
//Screw Holes Fore A
#translate([71.225,-1,6]){
    rotate([-90,0,0]){
         cylinder(d=2.8,h=12);      
      }
}
//SH Fore B
#translate([101.225,-1,6]){
    rotate([-90,0,0]){
         cylinder(d=2.8,h=12);      
      }
}
//Screw Holes Aft A
#translate([80.755,136,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);
    }
}
//SH Aft B     
#translate([110.755,136,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);      
      }
    }
//Shallow angle sidewall cuts
//Cutter Fore (right end)
#translate ([143.15,-1,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0.1,0,0], [5,0,0], [5,5,0], [0.1,5,0], [0,0,10], [5,0,10], [5,5,10], [0,5,10]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );
//Cutter Aft (right end)            
#translate ([143.15,130.35,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0.1,0,0], [5,0,0], [5,5,0], [0.1,5,0], [0,0,10], [5,0,10], [5,5,10], [0,5,10]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );          
  }
//Cross Ribs
translate([14.9,66.175,2])
    cube([115,2,4]);
translate([38,12.3,2])
    cube([2,109.75,4]);
translate([110,12.3,2])
    cube([2,109.75,4]);
//Mid Supports
translate([66.5,66.3,2])
    cylinder(h=7.9,r1=3,r2=3);
translate([130,66.3,2])
    cylinder(h=7.9,r1=3,r2=3);
//PCB Bottom Left    
translate([44,5,2])
    cube([13,6,7.9]);
translate([44,5,9.9])
    #cube([13,3,2]);
translate([104,5,2])
    cube([13,6,7.9]);
translate([104,5,9.9])
    #cube([13,3,2]);
    
//Mechanical Union
//Top Joint
translate([120.2,113.35,2]){
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
translate([120.2,45,2]){
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
*translate([435.625,10,-2])
    cube(4);
*translate([425,126.0625,-2])
    cube(4);
//Measure Bottom Case
*translate([143.875,21,0])
    cube(4);
*translate([143.875,134.35,0])
    cube(4);  
//Screw holes:Y=0/140.35 
   //Fore: X=104.25, 188.525 
   //Aft: X=113.725, 198.05
//Difference 60% to Comp
   //X=2U 38.1
   //Y=1U 19.05 Half=9.525
//Measure Joint Screw Holes
*translate([143.875,101.35,5])
    cube(4);
*translate([143.875,33,5])
    cube(4);
//Measure Joint Position
*translate ([143.875,21,2])
    cube (4);
*translate ([143.875,89.35,2])
    cube (4);
//Measure Slop in Joints
*translate ([143.875,21,2])
    cube (4);
*translate ([143.875,89.35,2])
    cube (4);
// End of Case
*translate([292.75,0,0])
    cube(4);
*translate([292.75,0,0])
    cube(4);  
//Top Left Joints (for fit) Z=4.2
//Left Case Top: Done

//Top Mid Joints (for fit) Z=4.2
//Joints Mid Case Top: Done    