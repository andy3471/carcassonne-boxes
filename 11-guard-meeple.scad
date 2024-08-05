/**
 * @file mists.scad
 * @author Andrew Hargrave
 * Mists Over Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>
 
sections = [15*mm];
columns = 1;
icon="11-guard-meeple.svg";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=.55, xoff=7.5, yoff=1);