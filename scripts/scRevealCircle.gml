// argument0 = x
// argument1 = y
// argument2 = radius
// argument3 = brightness

if !instance_exists(oHideMap) return -1
var xview, yview;
xview = oHideMap.view_x;
yview = oHideMap.view_y;
if ((argument0+argument2) < xview) return 1;
if ((argument1+argument2) < yview) return 1;
if ((argument0-argument2) > xview+view_wview[0]) return 1;
if ((argument1-argument2) > yview+view_hview[0]) return 1;
var radius;
radius = argument2*.01;
surface_set_target(oHideMap.HideMap);
draw_set_blend_mode(bm_subtract);
draw_sprite_ext(sprRevealCircle,0,argument0-xview,argument1-yview,radius,radius,0,c_white,argument3);
draw_set_blend_mode(bm_normal);
surface_reset_target();
return 1;
