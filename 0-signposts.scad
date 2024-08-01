/**
 * @file signposts.scad
 * @author Andrew Hargrave
 * Signposts Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

sections = [(12 * tiles + clearance)];
columns = 1; 
icon="0-signposts.dxf";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=2.2, xoff=21, yoff=-9); 