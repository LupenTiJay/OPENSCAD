   numOfTeeth = 5;
   angle = 360;
   radius = .25;
   height = .25;
   radiusOfRing = 1;
   numberOfFaces = 100;
difference(){
    rotate_extrude( $fn = 100){
        translate([4, 0, 0]){
                circle(r = 1, $fn = 100);
        }
    }
   
    translate([0,0,1]){
cylinder(r = 5, h = 1, center = true, $fn = 100);
}
translate([0,0,-1]){
cylinder(r = 5, h = 1, center = true, $fn = 100);
}
    
}


difference(){
for(i = [0: angle/numOfTeeth: angle]){
       
        translate([cos(i),sin(i),0]){rotate([0,0,i]){
           
                cube([4,1,.1],center = true);
            
                cube([4,.1,1],center = true);
            
            } 
        } 
    }       
        cylinder(r = .6, h = 2, $fn = 100, center = true);
    
    
        
}

cylinder()
difference(){
    cylinder( r = .7, h = 2, $fn = 100, center = true);
        
        
        cylinder(r = .6, h = 2, $fn = 100, center = true);
    }