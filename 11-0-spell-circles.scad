/**
 * @file spell-circles.scad
 * @author Andrew Hargrave
 * Spell Circles Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

sections = [(9*tiles + clearance), 10*mm];
columns = 1; 
icon="11-0-spell-circles.svg";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=.8, xoff=12, yoff=-3); 