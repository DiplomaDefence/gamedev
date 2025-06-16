draw_sprite_ext(torsospr, 0, x, y+body_offset, body_dir, 1, body_angle, c_white, 1);
draw_sprite_ext(legspr, leg_frame, x, y+1, dir, 1, image_angle-h_speed*2*!grounded, c_white, 1);
draw_sprite_ext(headspr, 0, head_x, head_y, body_dir, 1, head_angle, c_white, 1);
draw_sprite_ext(gunspr, 0, gun_x, gun_y, body_dir, 1, arm_angle, c_white, 1);
draw_sprite_ext(armspr, 0, arm_x, arm_y, body_dir, 1, arm_angle, c_white, 1);

//draw_sprite(spr_drone_eye,0,bullet_x,bullet_y)

if place_meeting(x,y,obj_ladder){
 draw_sprite(spr_player_platform,0,x,y+36)   
}

if instance_exists(obj_exit_door) and global.win{
    draw_sprite_ext(spr_exitpointer, 0, x, y, 1, 1, point_direction(x,y,obj_exit_door.x,obj_exit_door.y), c_white, 1);
}

//draw_self();

//draw_text(x,y,platform)