/**
 * @file tollkeepers.scad
 * @author Andrew Hargrave
 * Tollkeepers Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

sections = [10*mm, (10 * tiles + clearance)];
columns = 1;
icon="0-tollkeepers.svg";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=.3, xoff=-2, yoff=-3.5); 