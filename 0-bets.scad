/**
 * @file bets.scad
 * @author Andrew Hargrave
 * The Bets Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

mm = 1;
tiles = 2*mm;

sections = [10*tiles, 5*mm];
columns = 1;
icon="0-bets.dxf";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=2.2, xoff=21, yoff=-9); 
