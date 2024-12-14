if place_meeting(x,y+4,obj_solid){
	gravity = 0;
	if !place_meeting(x,y+1,obj_solid){
		move_contact_solid(270,4);
		vspeed = 0;
	}
	grounded = true;
} else {
	gravity = 0.2;
	grounded = false;
}


if keyboard_check(ord("A")) and (!place_meeting(x-1,y,obj_solid) or !place_meeting(x-1,y-4,obj_solid)){
	if (h_speed > -max_hspeed) {
		h_speed -= 0.4
	} else {
		h_speed = -max_hspeed	
	}
	dir = -1;
} else if keyboard_check(ord("D")) and (!place_meeting(x+1,y,obj_solid) or !place_meeting(x+1,y-4,obj_solid)){
	if (h_speed < max_hspeed) {
		h_speed += 0.4
	} else {
		h_speed = max_hspeed	
	}
	dir = 1;
}
	
	if place_meeting(x,y+4,obj_solid) and !place_meeting(x+3*sign(h_speed),y+4,obj_solid) {
		move_contact_solid(270,4);
	}
	
	
	if keyboard_check_pressed(vk_space) and grounded{
		vspeed -= 6;
	}
	
if !keyboard_check(ord("D")) and !keyboard_check(ord("A")) and grounded{
	if (h_speed < 0) {
		h_speed += 0.2
	} else if (h_speed > 0) {
		h_speed -= 0.2
	}
} else {
	if (h_speed < 0) {
		h_speed += 0.05
	} else if (h_speed > 0) {
		h_speed -= 0.05
	}
}
if mouse_x >= x {
	body_angle = point_direction(x,y,mouse_x,mouse_y);
	body_dir = 1;
	
	if body_angle > 15 && body_angle < 180{
		body_angle = 15;	
	}
	
	if body_angle < 345 && body_angle > 180{
		body_angle = 345;	
	}
	
	head_angle = point_direction(x,y,mouse_x,mouse_y);
	
	if head_angle > 35 && head_angle < 180{
		head_angle = 35;	
	}
	
	if head_angle < 325 && head_angle > 180{
		head_angle = 325;	
	}
	
	arm_angle = point_direction(x,y,mouse_x,mouse_y);
	
} else {
	body_angle = point_direction(x,y,mouse_x,mouse_y+4)+180;
	body_dir = -1;
	
	if body_angle > 375{
		body_angle = 375;	
	}
	
	if body_angle < 345{
		body_angle = 345;	
	}
	
	head_angle = point_direction(x,y,mouse_x,mouse_y)+180;
	
	if body_angle > 395{
		body_angle = 395;	
	}
	
	if body_angle < 325{
		body_angle = 325;	
	}
	
	arm_angle = point_direction(x,y,mouse_x,mouse_y)+180;
}


if !place_meeting(x+3*sign(h_speed),y,obj_solid){
	x += h_speed;
} else if place_meeting(x+3*sign(h_speed),y,obj_solid) and !place_meeting(x+3*sign(h_speed),y-4,obj_solid) and vspeed >= 0{
	x += h_speed;
	y -= 4;
	move_contact_solid(270,4);
} else {
	for (var i = 0; i < max_hspeed; i++){
		if !place_meeting(x+sign(h_speed),y,obj_solid){
			x += 1*sign(h_speed);
		} else {
			break;	
		}
	}
}

image_speed = abs(h_speed*0.33)
image_xscale = dir;