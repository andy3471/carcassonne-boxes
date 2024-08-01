/**
 * @file sping.scad
 * Four Seasons - Spring Carcassonne box.
 */

include <carcassonne_box.scad>

mm = 1;
tiles = 2*mm;

sections = [12 * tiles];
columns = 1;
icon = "0-spring.dxf";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=2.2, xoff=21, yoff=-9); 