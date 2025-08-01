//First created by Dholydai 29 Mar 2025
//Dholydai: 13 May 2025 10mm Z and x=152.9
//23 May 2025: add 0.2mm to X and 0.1mm to SH add angle cuts
//PCB supports +2.7mm Y for new PCBs (over-looked months ago)

//TXT
translate([50,33.5,0])
rotate([0,0,0])
linear_extrude(2.6)
text("Cmp Lft",size=10,font="Microsoft Sans Serif");
translate([53,89,0])
rotate([0,0,0])
linear_extrude(2.6)
text("LeftHnd",size=10,font="Microsoft Sans Serif");
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
    cube([3,130.35,8]); 
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
translate([100.425,3,2]){
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
translate([130.425,3,2]){
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
translate([108.9,131.35,2]){
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
translate([138.9,131.35,2]){
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
//EOS: Top Case
//X-Front=127.325 X-Back=117.8 

//Screw Holes Fore
#translate([109.425,-1,6]){
    rotate([-90,0,0]){
         cylinder(d=2.8,h=12);      
      }
}
#translate([139.425,-1,6]){
    rotate([-90,0,0]){
         cylinder(d=2.8,h=12);      
      }
}
//Screw Holes Aft
#translate([99.9,135.35,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);
    }
}     
#translate([129.9,135.35,6]){
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
*translate([34.9,66.175,2])
    cube([103.375,2,4]);
translate([14.9,66.175,2])
    cube([123.375,2,4]);   
translate([40,12.3,2])
    cube([2,109.75,4]);
translate([115,12.3,2])
    cube([2,109.75,4]);
//Mid Supports
translate([63,78.35,2])
    cylinder(h=7.9,r1=3,r2=3);
translate([126,78.35,2])
    cylinder(h=7.9,r1=3,r2=3);
//Hole repair
*translate([117,75.35,2])
    cube([3,6,4]);
//PCB Bottom Edge
translate([75.5,15.7,2])
    cube([8,6,8]);
#translate([75.5,15.7,10])
    cube([8,3,2]);
translate([116.5,15.7,2])
    cube([11,6,8]);
#translate([116.5,15.7,10])
    cube([11,3,2]);

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
    
//Dimensions Top Comp Case
//Y=140.35
//Bottom Case Half
//X=153.4 Y=134.35    
//Top Case Left-hand screw holes
//Fore=112.325 Aft=102.8

//Bottom Case SH= (X-18mm)
//Fore=94.325 Aft=84.8
*translate([109.325,-1,0])
    cube(4);
*translate([99.8,133.35,0])
    cube(4);  

//Measure Joint Screw Holes
*translate([153.4,102.35,5])
    cube(4);
*translate([153.4,32,5])
    cube(4);

// End of case half
*translate([153.4,0,0])
    cube(4);
  