//Created by Dholydai on 28 Dec 2024
//TXT
translate([113,100])
rotate([0,0,180])
linear_extrude(2.6)
text("RightC-Rgt",size=10,font="Microsoft Sans Serif");
translate([90,42,0])
rotate([0,0,180])
linear_extrude(2.6)
text("200",size=10,font="Microsoft Sans Serif");
//BASE
$fn=32;
difference(){
//Deck
    union() {
        translate([2,2,0])
            cube([151.4,130.35,2]);
        translate([2,0,0])
            cube([151.4,2,2]);
        translate([0,2,0])
            cube([2,130.35,2]);
        translate([2,132.35,0])
            cube([151.5,2,2]);    
        translate([2,2,0])
            cylinder(h=2,r1=2,r2=2);
        translate([2,132.35,0])
            cylinder(h=2,r1=2,r2=2);
//Sidewall
*translate([0,2,2])
    cube([3,55.175,7]);
*translate([0,77.175,2])
    cube([3,55.175,7]);
translate([0,2,2])
    cube([3,130.35,7]);    
translate([2,131.355,2])
    cube([151.4,3,7]);
translate([2,0,2])
    cube([151.4,3,7]);
//SW Corners Outside   
translate([2,2,5.5])
    rotate([0,0,180]){
    rotate_extrude( angle=90)
        translate([1,0,0])
            square([2,7], center=true);
}
translate([2,132.35,5.5])
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
translate([4,130.35,5.5])
    rotate([0,0,90]){
    rotate_extrude( angle=90)
        translate([2,0,0])
            square([2,7], center=true);        
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
//SR Fore (rear)
translate([90.8,3,2]){
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
translate([120.8,3,2]){
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
//SR Aft (front)
translate([118.325,131.35,2]){
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
translate([148.325,131.35,2]){
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
//X-Front=89.25 X-Back=108.25 Y=102.25 
//Screw Holes Fore (rear)
#translate([99.8,-1,6]){
    rotate([-90,0,0]){
         cylinder(d=2.8,h=12);      
      }
}
#translate([129.8,-1,6]){
    rotate([-90,0,0]){
         cylinder(d=2.8,h=12);      
      }
}
//Screw Holes Aft (front)
#translate([109.325,135.35,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);
    }
}     
#translate([139.325,135.35,6]){
    rotate([90,0,0]){
         cylinder(d=2.8,h=12);      
      }
    }
//Sidewall Notch for Stabilizer
*translate([115.05,131.75,7.2])
    cylinder(h=2,r1=1.5,r2=2.5);
  }
//Cross Ribs
*translate([34.9,66.175,2])
    cube([103.375,2,4]);
*translate([116.5,63,2])
    cube(4);    
translate([14.9,66.175,2])
    cube([123.375,2,4]);
translate([40,12.3,2])
    cube([2,109.75,4]);
translate([115,12.3,2])
    cube([2,109.75,4]);
//Mid Supports
translate([64,56,2])
    cylinder(h=7,r1=3,r2=3);
translate([128,56,2])
    cylinder(h=7,r1=3,r2=3);
//PCB Bottom Edge Support
translate([77.5,115.35,2])
    cube([8,6,7]);
translate([77.5,118.35,9])
    cube([8,3,2]);
translate([119,115.35,2])
    cube([10,6,7]);
translate([119,118.35,9])
    cube([10,3,2]);
//Measure U1 Gap
*translate([-4,58,4])
cube(4);
*translate([-4,34,4])
cube(4);

//USB Ramp
difference() {
translate([-3,57.175,2])
*polyhedron(points=[[0,0,0], [6,0,0], [6,20,0], [0,20,0], [6,0,1], [6,20,1]],
    faces=[[0,1,2,3],[1,4,5,2],[0,3,5,4],[0,4,1],[3,2,5]]
             );
*translate([-3,74.775,1])
    cube([3,3,2]);
*translate([-3,56.575,1])
    cube([3,3,2]);
}    
//Ramp Threshold             
*translate([-3,59.575,0])
    cube([3,15.2,2]);
             
//Mechanical Union
//Top Joint
difference() {
translate([130.4,114.35,2]){
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
//Slop for Switch 79
*translate([153.4,105.35,7.5])
    cylinder(h=2,r1=2.5,r2=3);
*translate([148.4,105.35,7.5])
    cylinder(h=2,r1=1.5 ,r2=2);
}
//Measure Joint Screw Holes
*translate([152,96.35,5])
*translate([152,26,5])
    cube(4);
//Bottom Joint
difference() {  
    translate([130.4,44,2]){
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
//Slop for Switch 24
#translate([143.4,29.175,7.5])
    cylinder(h=2,r1=2.5,r2=3);
#translate([148.4,29.175,7.5])
    cylinder(h=2,r1=1.5 ,r2=2);
}
//Dimensions Top 60% Case Left Raw
//Y=102.25 X-Back=102.25 X-Front=89.25

//Dimensions 325 Top Comp Case
//X=311.8 Y=140.35
//Bottom Case Half
//X=152.9 Y=134.35
//X: 153.4 > add 0.5 after 1st print!
//Measure Bottom Case
*translate([152.9,-2,0])
    cube([5,5,5]);
*translate([150,134.35,0])
    cube([5,5,5]);
//Screw holes:Y=0/140.35 
   //Fore: X=104.25, 188.525 
   //Aft: X=113.725, 198.05
//Difference 60% to Comp
   //X=2U 38.1  Half=19.05
   //Y=1U 19.05 Half=9.525

//Measure Joint Screw Holes
*translate([152,96.35,5])
    cube(4);
*translate([152,26,5])
    cube(4);
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

    