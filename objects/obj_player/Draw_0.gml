draw_sprite_ext(spr_robotbody_1, 0, x, y+body_offset, body_dir, 1, body_angle, c_white, 1);
draw_sprite_ext(spr_robot_legs_1, leg_frame, x, y+1, dir, 1, image_angle-h_speed*2*!grounded, c_white, 1);
draw_sprite_ext(spr_robothead_0, 0, head_x, head_y, body_dir, 1, head_angle, c_white, 1);
draw_sprite_ext(spr_robotgun_1, 0, gun_x, gun_y, body_dir, 1, arm_angle, c_white, 1);
draw_sprite_ext(spr_robotarm_1, 0, arm_x, arm_y, body_dir, 1, arm_angle, c_white, 1);

//draw_sprite(spr_drone_eye,0,bullet_x,bullet_y)

if place_meeting(x,y,obj_ladder){
 draw_sprite(spr_player_platform,0,x,y+36)   
}
//draw_self();

//draw_text(x,y,platform)