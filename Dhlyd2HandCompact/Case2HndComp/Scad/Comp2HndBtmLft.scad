//Dholydai: 09 May 2025 10mm Z and x=152.9
//23 May 2025: add 0.2mm to X and 0.1mm to SH add angle cuts
//PCB supports +2.7mm Y for new PCBs (over-looked months ago)

//TXT
translate([52,33.5,0])
rotate([0,0,0])
linear_extrude(2.6)
text("Cmp Lft",size=10,font="Microsoft Sans Serif");
translate([61,89,0])
rotate([0,0,0])
linear_extrude(2.6)
text("2Hnd",size=10,font="Microsoft Sans Serif");
//BASE
$fn=32;
difference(){
//Deck
    union() {
        translate([2,2,0])
            cube([151.1,130.35,2]);
        translate([2,0,0])
            cube([151.1,2,2]);
        translate([0,2,0])
            cube([2,130.35,2]);
        translate([2,132.35,0])
            cube([151.1,2,2]);    
        translate([2,2,0])
            cylinder(h=2,r1=2,r2=2);
        translate([2,132.35,0])
            cylinder(h=2,r1=2,r2=2);
//Sidewall
translate([0,2,2])
    cube([3,55.175,8]);
translate([0,77.175,2])
    cube([3,55.175,8]);
translate([2,131.355,2])
    cube([151.1,3,8]);
translate([2,0,2])
    cube([151.1,3,8]);
//SW Corners Outside   
translate([2,2,5.5])
    rotate([0,0,180]){
    rotate_extrude( angle=90)
        translate([1,0,0])
            square([2,9], center=true);
}
translate([2,132.35,5.5])
    rotate([0,0,90]){
    rotate_extrude( angle=90)
        translate([1,0,0])
            square([2,9], center=true);
}        
//SW Corners Inside   
translate([4,4,5.5])
    rotate([0,0,180]){
    rotate_extrude( angle=90)
        translate([2,0,0])
            square([2,9], center=true);
}
translate([4,130.35,5.5])
    rotate([0,0,90]){
    rotate_extrude( angle=90)
        translate([2,0,0])
            square([2,9], center=true);        
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
translate([3,111.35,2]){
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
//SR Fore
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
//SR Aft
translate([89.85,131.35,2]){
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
translate([119.85,131.35,2]){
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
#translate([-1,102.35,6]){
    rotate([0,90,0]){
         cylinder(d=2.8,h=12);      
      }
}
//Dimensions Top Case
//X-Front=89.225 X-Back=98.75
//Screw holes Top Case:
    //Fore: X=89.225
    //Aft: X=98.75 
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
#translate([80.85,135.35,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);
    }
}     
#translate([110.85,135.35,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);      
      }
    }
//Sidewall Notch for Stabilizer
*translate([96.25,2.75,7.2])
    cylinder(h=2,r1=1.5,r2=2.5);

//Shallow angle sidewall cuts
//Cutter Fore (right end)
#translate ([153.05,-1,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0.1,0,0], [5,0,0], [5,5,0], [0.1,5,0], [0,0,10], [5,0,10], [5,5,10], [0,5,10]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );
//Cutter Aft (right end)            
#translate ([153.05,130.35,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0.1,0,0], [5,0,0], [5,5,0], [0.1,5,0], [0,0,10], [5,0,10], [5,5,10], [0,5,10]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );
}
//Cross Ribs
translate([34.9,66.175,2])
    cube([103.375,2,4]);
translate([40,12.3,2])
    cube([2,109.75,4]);
translate([115,12.3,2])
    cube([2,109.75,4]);
//Mid Supports
translate([54,78.35,2])
    cylinder(h=7.9,r1=3,r2=3);
translate([111,78.35,2])
    cylinder(h=7.9,r1=3,r2=3);
//PCB Bottom Edge
translate([37,15.7,2])
    cube([9,6,8]);
#translate([37,15.7,10])
    cube([9,3,2]);
translate([78,15.7,2])
    cube([13,6,8]);
#translate([78,15.7,10])
    cube([13,3,2]);
translate([123,15.7,2])
    cube([13,6,8]);
#translate([123,15.7,10])
    cube([13,3,2]);
//Measure U1 Gap
*translate([-4,58,4])
cube(4);
*translate([-4,34,4])
cube(4);

//USB Threshold
translate([0,57.175,2])
    cube([3,20,1]);             
translate([-3,60.525,0])
    cube([3,13.3,3.5]);
translate([-3,60.525,3.5])
    polyhedron(points=[[0,13.3,0], [0,0,0], [3,0,0], [3,13.3,0], [3,11.3,2], [3,2,2]],
        faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]);
    
//Mechanical Union
//Top Joint
translate([130.1,114.35,2]){
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
translate([130.1,44,2]){
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
    cube([5,5,5]);
*translate([150,134.35,0])
    cube([5,5,5]);  
//Measure Joint Screw Holes
*translate([152.9,102.35,5])
    cube([5,5,5]);
*translate([152.9,32,5])
    cube([5,5,5]);

  