/**
 * @file mists.scad
 * @author Andrew Hargrave
 * Mists Over Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

module carcassonne_lid(sections, columns=1, icon=false, icon2=false, icon3=false, rot=0, mult=1, xoff=0, yoff=0, mult2=1, xoff2=0, yoff2=0, mult3=1, xoff3=0, yoff3=0, g=0){
    divider_thickness = wall/2;
    length = sum(sections) + (divider_thickness * (len(sections) - 1));
    w = length+(1.5*wall)+.1;
    l = (width*columns)+wall;
    h = wall;
    d = 2;

    CubePoints = [
        [ 0-g, 0-g,   0 ],  //0
        [ w+g, 0-g,   0 ],  //1
        [ w+g, l+g,   0 ],  //2
        [ 0-g, l+g,   0 ],  //3
        [   d,   d, h+g ],  //4
        [   w,   d, h+g ],  //5
        [   w, l-d, h+g ],  //6
        [   d, l-d, h+g ]   //7
    ];

    CubeFaces = [
        [0,1,2,3],  // bottom
        [4,5,1,0],  // front
        [7,6,5,4],  // top
        [5,6,2,1],  // right
        [6,7,3,2],  // back
        [7,4,0,3]   // left
    ];

    difference(){
        union(){
            polyhedron( CubePoints, CubeFaces );
            translate([w-wall-.15,0,0]) cube([wall+.2,l, (1.5*wall)+.1]);
        }
        if(icon){
            translate([w/2+xoff,l/3+yoff,h-(wall/2)-5]){
                linear_extrude(height=(wall)+5){
                    rotate(rot) scale(mult) import(icon);
                }
            }
        }
        if(icon2){
            translate([w/2+xoff2,l/3+yoff2,h-(wall/2)]){
                linear_extrude(height=(wall)+.1){
                    rotate(rot) scale(mult2) import(icon2);
                }
            }
        }
        if(icon3){
            translate([w/2+xoff3,l/3+yoff3,h-(wall/2)]){
                linear_extrude(height=(wall)+.1){
                    rotate(rot) scale(mult3) import(icon3);
                }
            }
        }
    }
}

 
sections = [15*mm];
columns = 1;  
icon="11-guard-meeple.svg";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=.55, xoff=7.5, yoff=1);