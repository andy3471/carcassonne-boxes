/**
 * @file leipzig.scad
 * @author Andrew Hargrave
 * The Markets of Leipzig Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

// TODO: This one has two columns
include <carcassonne_box.scad>

sections = [(4 * tiles) + clearance];
columns = 2;
icon="0-leipzig.dxf";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=2.2, xoff=21, yoff=-9); 
