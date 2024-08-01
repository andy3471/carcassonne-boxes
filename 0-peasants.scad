/**
 * @file peasants.scad
 * @author Andrew Hargrave
 * Peasant Revolts Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

sections = [(12 * tiles + clearance)];
columns = 1; 
icon="0-peasants.svg";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=.25, xoff=-3, yoff=-2); 