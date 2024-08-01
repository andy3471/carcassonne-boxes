/**
 * @file sping.scad
 * Four Seasons - Spring Carcassonne box.
 */

include <carcassonne_box.scad>

sections = [(12 * tiles + clearance)];
columns = 1; 
icon = "0-drawbridges.svg";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=.30, xoff=-3, yoff=-4);