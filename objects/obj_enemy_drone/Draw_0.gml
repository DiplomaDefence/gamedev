draw_self();

var eyedir = 0;
var eyedistance = 0;

if target != noone {
    eyedir = point_direction(x,y,target.x,target.y);
    eyedistance = 1;
}

var eyex = x + lengthdir_x(eyedistance,eyedir);
var eyey = y + lengthdir_y(eyedistance,eyedir);

draw_sprite(spr_drone_eye,0,eyex,eyey);