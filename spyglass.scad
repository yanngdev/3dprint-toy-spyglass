$fn = 256;
t = 1.2;

module telescope() {
    difference() {
        union() {
            color("red") cylinder(80-9+80+80+9, 50/2, 30/2);
            
            color("green") union() {
                cylinder(1, 54/2, 55/2);
                translate([0, 0, 1]) cylinder(15, 55/2, 55/2);
            }
            
            // remove this for variant
            color("blue") translate([0,0,80-9-9-2]) union() {
                cylinder(3, 44/2, 49/2);
                translate([0, 0, 3]) cylinder(8, 49/2, 49/2);
            }
            
            color("purple") translate([0,0,80-9+80-9-2]) union() {
                cylinder(3, 38/2, 43/2);
                translate([0, 0, 3]) cylinder(8, 43/2, 43/2);
            }
            
            color("pink") translate([0,0,80-9+80+80-2]) difference() {
                union() {
                    cylinder(3, 31/2, 36.5/2);
                    translate([0, 0, 3]) cylinder(7, 36.5/2, 36.5/2);
                    translate([0, 0, 3+7]) cylinder(1, 36.5/2, 31/2);
                }
                
                cylinder(10, 30/2-t, 30/2-5);
            }
        }
        cylinder(80-9+80+80+9, 50/2-t, 30/2-t);
    }
}

translate([0, 0, 0]) difference() {
    telescope();
    translate([-25, -25, 80-9]) cube([60, 60, 80+80+7.5+7.5]);
}

translate([0, 0, -80+9]) difference() {
    telescope();
    translate([-30, -30, -9]) cube([60, 60, 80]);
    translate([-30, -30, 80-9+80]) cube([60, 60, 80+9+9]);
}

translate([0, 0, -80+9-80]) difference() {
    telescope();
    translate([-30, -30, 0]) cube([60, 60, 80-9+80]);
}
