//draw_self();
draw_sprite_ext(spr_robotbody, 0, x, y+body_offset, body_dir, 1, body_angle, c_white, 1);
draw_sprite_ext(spr_robot_legs0, 0, x, y+32, dir, 1, image_angle, c_white, 1);
draw_sprite_ext(spr_robothead, 0, head_x, head_y, body_dir, 1, head_angle, c_white, 1);
draw_sprite_ext(spr_robotarm_0, 0, arm_x, arm_y, body_dir, 1, arm_angle, c_white, 1);
//draw_text(x,y,body_angle)