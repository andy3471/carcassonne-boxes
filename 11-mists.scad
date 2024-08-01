/**
 * @file mists.scad
 * @author Andrew Hargrave
 * Mists Over Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>
 
sections = [(60*tiles + clearance), 30*mm, 10*mm];
columns = 1;
icon="11-mists.svg";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=.3, xoff=0, yoff=-4);