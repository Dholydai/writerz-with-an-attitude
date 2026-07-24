//Dholydai: 27 Jun 2026
//After action: add 0.1mm to mount towers
//

//TXT
translate([53.9,27.9,2])
rotate([0,0,0])
linear_extrude(0.6)
text("60% Lft",size=10,font="Microsoft Sans Serif");
translate([51.5,64.5,2])
rotate([0,0,0])
linear_extrude(0.6)
text("2HndMn",size=10,font="Microsoft Sans Serif");
//BASE
$fn=32;
difference(){
//Deck
    union() {
        #translate([2,2,0])
            cube([144.675,98.25,2]);
        translate([2,0,0])
            cube([144.675,2,2]);
        translate([0,2,0])
            cube([2,98.25,2]);
        translate([2,100.25,0])
            cube([144.675,2,2]);    
        translate([2,2,0])
            cylinder(h=2,r1=2,r2=2);
        translate([2,100.25,0])
            cylinder(h=2,r1=2,r2=2);
//Sidewall
translate([0,2,2])
    cube([3,42.375,17]);
translate([0,57.875,2])
    cube([3,42.375,17]);
translate([2,99.25,2])
    cube([144.675,3,17]);
translate([2,0,2])
    cube([144.675,3,17]);
//SW Corners Outside   
translate([2,2,10.5])
    rotate([0,0,180]){
    rotate_extrude( angle=90)
        translate([1,0,0])
            square([2,17], center=true);
}
translate([2,100.25,10.5])
    rotate([0,0,90]){
    rotate_extrude( angle=90)
        translate([1,0,0])
            square([2,17], center=true);
}        
//SW Corners Inside   
translate([4,4,10.5])
    rotate([0,0,180]){
    rotate_extrude( angle=90)
        translate([2,0,0])
            square([2,17], center=true);
}
translate([4,98.25,10.5])
    rotate([0,0,90]){
    rotate_extrude( angle=90)
        translate([2,0,0])
            square([2,17], center=true);        
    }
//USB Port (Inside Union)
// Floor Beam
translate([0,44.375,0])
    cube([3,13.5,2.4]);
// Ceiling Beam
translate([0,44.375,10.5])
    cube([3,13.5,8.5]);
// Bottom Wedge (from original)             
translate([0,44.375,2.4])
//                      0           1        2        3           4           5         6           7
polyhedron(points=[[0,13.5,0], [0,0,0], [3,0,0], [3,13.5,0], [3,13.5,2], [3,0,2], [2,0,2], [2,13.5,2]],
        faces=[[0,1,2,3],[5,4,3,2],[0,7,6,1],[7,4,5,6],[0,3,4,7],[5,2,1,6]]);   
      
        
//Top Wedge
translate([0,44.375,8.5])
//                    0           1        2        3           4           5         6           7
polyhedron(points=[[3,0,2], [3,13.5,2], [3,13.5,0], [3,0,0], [0,0,2], [0,13.5,2], [2,13.5,0], [2,0,0]],
    faces=[[0,1,2,3],[5,4,7,6],[0,4,5,1],[0,3,7,4],[5,6,2,1],[7,3,2,6]]);//,[7,3,2,6] 
    
    
//Left Wedge
translate([0,55.875,2.4])
//                      0           1        2        3           4           5         6           7
    polyhedron(points=[[3,0,0], [0,2,0], [3,2,0], [3,0,8.25], [0,2,8.25], [3,2,8.25], [2,0,8.25], [2,0,0]],
        faces=[[7,1,4,6],[0,3,5,2],[2,5,4,1],[0,2,1,7],[3,6,4,5],[7,6,3,0]]);             
              
              
//Right Wedge
translate([0,44.375,2.4])
//                      0           1        2        3           4           5         6           7
    polyhedron(points=[[3,2,0], [3,0,0], [0,0,0], [3,2,8.25], [3,0,8.25], [0,0,8.25], [2,2,8.25], [2,2,0]],
        faces=[[0,1,4,3],[7,6,5,2],[2,5,4,1],[0,7,2,1],[3,4,5,6], [7,0,3,6]]);
 
}

//Controller PCB Notches (Inside Difference)
#translate([2.3125,41.575,4])
    polyhedron(points=[[2,0,0], [2,19,0], [0,19,1], [0,0,1], [2,0,3], [2,19,3], [0,19,3], [0,0,3]], 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]);
//Dimensions Minimal Case
//X=146.375 (Half) Y=102.25

//Shallow angle sidewall cuts
//Cutter Fore (right end)
#translate ([146.6,-1,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0.1,0,0], [5,0,0], [5,5,0], [0.1,5,0], [0,0,19.1], [5,0,19.1], [5,5,19.1], [0,5,19.1]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );
//Cutter Aft (right end)            
#translate ([146.6,98.25,0])
//                  0        1        2        3        4        5         6         7
polyhedron(points=[[0.1,0,0], [5,0,0], [5,5,0], [0.1,5,0], [0,0,19.1], [5,0,19.1], [5,5,19.1], [0,5,19.1]],
 
    faces=[[0,4,5,1],[0,3,7,4],[1,5,6,2],[2,6,7,3],[0,1,2,3],[4,7,6,5]]
              );    
}

//Cross Ribs
translate([37.9,49.625,2])
    cube([103.375,2,3]);
translate([44.9,15.3,2])
    cube([2,72.25,3]);
translate([110.9,15.3,2])
    cube([2,72.25,3]);

//PCB Mount Supports
//H1, H4, H6
difference() {
    union() {
translate([29.8,82,2])
    cylinder(h=7,d=7);
translate([30.1,24.15,2])
    cylinder(h=7,d=7);
translate([107,11.6,2])
    cylinder(h=7,d=7);
    }

//H1, H4, H6 Insert Holes
#translate([29.8,82,2])
    cylinder(h=8,d=2.8);
#translate([30.1,24.15,2])
    cylinder(h=8,d=2.8);
#translate([107,11.6,2])
    cylinder(h=8,d=2.8);
}                 
    
//Mechanical Union
difference() {
//Top Joint
translate([123.675,87.25,2]){
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
//PCB Mount H3 Tower         
translate([16.6,17.5,1])
    cylinder(d=7,h=6);
    }
//Joint Screw Holes
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
//H3 Tower Insert Hole
#translate([141.1,70.65,2])
    cylinder(h=8,d=2.8);
}

difference() {
//Bottom Joint
    translate([123.675,39,2]){
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
#translate([146.675,32.25,7])
    cylinder(h=2,r1=2.5,r2=3);
#translate([141.675,32.25,7])
    cylinder(h=2,r1=1.5 ,r2=2);
}    
//Dimensions Top Case Left Raw
//Y=102.25 X-Back=102.25 X-Front=89.25

//Measure Joint Screw Holes
*translate([143.375,75.2,0])
    cube([5,5,5]);
*translate([143.375,27,0])
    cube([5,5,5]);
 
//Measure H3 Tower
*translate([137.7,67.95,5])
    cube([5,5,5]);