/**
 * @file signposts.scad
 * @author Andrew Hargrave
 * Signposts Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

count = 4;
dividers = [[]];
columns = 1;
add = 4.5;
div1 = 0;
div2 = 0;

carcassonne_box(count, dividers, columns, add, div1, div2);
translate([0,width*columns+10,0]) carcassonne_lid(count, columns, icon="0-signposts.dxf", rot=90, mult=2.2, xoff=21, yoff=-9);
