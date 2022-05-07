//
// ktKEYBASE_DSA
//

gap1 = 0.001;
gap2 = 0.002;
th = 2;

key_margin = 0.4;
DSA_W = 18.2+key_margin;
DSA_D = 18.2+key_margin;
DSA_H = 7.5+key_margin;
margin = 0.3;
UNIT_W = 40.6+margin;
UNIT_D = 40.6+margin;
UNIT_H = 122.5;



difference()
{
    union()
    {
        translate([-(UNIT_W/2+7), -(UNIT_D/2+7), -15]) cube([UNIT_W+7-gap1, UNIT_D+7-gap1, 55]);
        translate([20, 0, -15]) cube([102, 100, 10]);
    }
    UNIT();
    LAYOUT();
    
    translate([0, 14, -0.5+gap1]) linear_extrude(0.5) text("DSA", font = "Liberation Sans:style=Bold", size=5, halign="center" );
    
    translate([0, 0, -20]) cube([25, 25, 50], center=true);

    translate([37.910, 150/2-gap1, -DSA_H/2+gap1]) cube([10, 150, DSA_H*1.5], center=true);
    translate([60.985, 150/2-gap1, -DSA_H/2+gap1]) cube([10, 150, DSA_H*1.5], center=true);
    translate([83.935, 150/2-gap1, -DSA_H/2+gap1]) cube([10, 150, DSA_H*1.5], center=true);
    translate([107.005, 150/2-gap1, -DSA_H/2+gap1]) cube([10, 150, DSA_H*1.5], center=true);
        
    translate([150/2+20-gap1+0.45, 121.600-106.325, -DSA_H/2+gap1]) cube([150, 10, DSA_H*1.5], center=true);
    translate([150/2+20-gap1, 121.600-83.284, -DSA_H/2+gap1]) cube([150, 10, DSA_H*1.5], center=true);
    translate([150/2+20-gap1, 121.600-60.280, -DSA_H/2+gap1]) cube([150, 10, DSA_H*1.5], center=true);
    translate([150/2+20-gap1, 121.600-37.215, -DSA_H/2+gap1]) cube([150, 10, DSA_H*1.5], center=true);

    LAYOUT_SUB();
}



module LAYOUT()
{
    translate([0, 121.600, -DSA_H+gap1])
    {
        translate([ 37.910,  -37.215, 0]) DSA();
        translate([ 60.985,  -37.215, 0]) DSA();
        translate([ 83.935,  -37.215, 0]) DSA();
        translate([107.005,  -37.215, 0]) DSA();
        translate([ 37.910,  -60.280, 0]) DSA();
        translate([ 60.985,  -60.280, 0]) DSA();
        translate([ 83.935,  -60.280, 0]) DSA();
        translate([107.005,  -60.280, 0]) DSA();
        translate([ 37.910,  -83.284, 0]) DSA();
        translate([ 60.985,  -83.284, 0]) DSA();
        translate([ 83.935,  -83.284, 0]) DSA();
        translate([107.005,  -83.284, 0]) DSA();
        translate([ 37.910, -106.325, 0]) DSA();
        translate([ 60.985, -106.325, 0]) DSA();
        translate([ 83.935, -106.325, 0]) DSA();
        translate([107.005, -106.325, 0]) DSA();
    }
}

module LAYOUT_SUB()
{
    translate([0, 121.600, -DSA_H*2+gap2])
    {
        translate([ 37.910,  -37.215, 0]) DSA_SUB();
        translate([ 60.985,  -37.215, 0]) DSA_SUB();
        translate([ 83.935,  -37.215, 0]) DSA_SUB();
        translate([107.005,  -37.215, 0]) DSA_SUB();
        translate([ 37.910,  -60.280, 0]) DSA_SUB();
        translate([ 60.985,  -60.280, 0]) DSA_SUB();
        translate([ 83.935,  -60.280, 0]) DSA_SUB();
        translate([107.005,  -60.280, 0]) DSA_SUB();
        translate([ 37.910,  -83.284, 0]) DSA_SUB();
        translate([ 60.985,  -83.284, 0]) DSA_SUB();
        translate([ 83.935,  -83.284, 0]) DSA_SUB();
        translate([107.005,  -83.284, 0]) DSA_SUB();
        translate([ 37.910, -106.325, 0]) DSA_SUB();
        translate([ 60.985, -106.325, 0]) DSA_SUB();
        translate([ 83.935, -106.325, 0]) DSA_SUB();
        translate([107.005, -106.325, 0]) DSA_SUB();
    }
}

module DSA()
{
    translate([0, 0, DSA_H/2])
    {
        cube([DSA_W, DSA_D, DSA_H], center=true);
    }
}

module DSA_SUB()
{
    translate([0, 0, DSA_H/2])
    {
        cube([DSA_W-5, DSA_D-5, DSA_H], center=true);
    }
}

module UNIT()
{
    translate([0, 0, UNIT_H/2])
    {
        cube([UNIT_W, UNIT_D, UNIT_H], center=true);
    }
}
