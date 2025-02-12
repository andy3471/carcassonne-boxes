/**
 * @file spring.scad
 * @author Andrew Hargrave
 * Four Seasons - Spring Carcassonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

sections = [(12 * tiles + clearance)];
columns = 1;
icon="0-spring.svg";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=.8, xoff=12, yoff=-2.5); 