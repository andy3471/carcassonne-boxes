/**
 * @file bets.scad
 * @author Andrew Hargrave
 * The Bets Carcossonne box.
 * @copyright Creative Commons Attribution-NonCommercial-ShareAlike 4.0
 */

include <carcassonne_box.scad>

sections = [(10*tiles) + clearance, 30*mm];
columns = 1;
icon="0-bets.svg";

carcassonne_box(sections, columns);
translate([0,width*columns+10,0]) carcassonne_lid(sections, columns, icon, rot=90, mult=.9, xoff=13, yoff=-4);