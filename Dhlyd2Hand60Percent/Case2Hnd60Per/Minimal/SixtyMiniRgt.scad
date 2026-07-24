//Dholydai: 27 Jun 2026
//After action: add 0.1mm to mount towers

//TXT
translate([106,75,2])
rotate([0,0,180])
linear_extrude(0.6)
text("60% Rgt",size=10,font="Microsoft Sans Serif");
translate([104,37,2])
rotate([0,0,180])
linear_extrude(0.6)
text("2HndMn",size=10,font="Microsoft Sans Serif");
//BASE
$fn=32;
difference(){
//Deck
    union() {
        translate([2,2,0])
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
*translate([0,2,2])
    cube([3,36.125,7]);
*translate([0,58.125,2])
    cube([3,36.125,7]);
translate([0,2,2])
    cube([3,98.25,17]);
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
}

//Dimensions Top Case
//X-Front=89.25 X-Back=108.25 Y=102.25

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
translate([14.9,49.625,2])
    cube([123.375,2,3]);
translate([44.9,15.3,2])
    cube([2,72.25,3]);
translate([110.9,15.3,2])
    cube([2,72.25,3]);
    
//PCB Mount Supports
//H2, H5, H7
difference() {
    union() {
translate([30.2,20.4,2])
    cylinder(h=6.9,d=7);
translate([30.2,78.15,2])
    cylinder(h=6.9,d=7);
translate([107.2,90.75,2])
    cylinder(h=6.9,d=7);  
}

//H2, H5, H7 Insert Holes
#translate([30.2,20.4,2])
    cylinder(h=8,d=2.8);
#translate([30.2,78.15,2])
    cylinder(h=8,d=2.8);
#translate([107.2,90.75,2])
    cylinder(h=8,d=2.8);   
}

//Mechanical Union
//Top Joint
difference(){
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

//Slop for Switch 48
#translate([146.675,70,7])
    cylinder(h=2,r1=2.5,r2=3);
#translate([141.675,70,7])
    cylinder(h=2,r1=1.5 ,r2=2);
}

//Mechanical Joint
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

   
//Dimensions Top Case Left Raw
//Y=102.25 X-Back=102.25 X-Front=89.25
//YB=
//Measure Joint Screw Holes
*translate([143.575,74.85,4])
    cube([5,5,5]);
*translate([143.575,21.4,4])
    cube([5,5,5]);
