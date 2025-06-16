if global.hp <= 0 {
    room_goto(Room_menu);
}

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

if mouse_check_button(mb_left){
    if gun_cooldown == 0 {
        audio_play_sound(snd_gun0,1,false)
        with instance_create_depth(bullet_x,bullet_y,-1,obj_playerbullet){
            direction = point_direction(other.arm_x,other.arm_y,mouse_x,mouse_y);
            image_angle = direction
        }
        gun_cooldown = 10 + 10 - 10*global.shooting_speed;
        recoil = 4;
    }
    
}

if gun_cooldown > 0 {
    gun_cooldown -= 1;
}

recoil = recoil * 0.4;

with(obj_platform){
    if other.vspeed >= 0 {
        if place_meeting(x,y-other.vspeed-1,other) and !place_meeting(x,y,other) and other.platform{
            with other{
                move_contact_solid(270,4);
                vspeed = 0;
                gravity = 0;
                grounded = true;
            }
        }
    }
}

if place_meeting(x,y,obj_ladder){
    vspeed = 0;
    grounded = true;
    gravity = 0;
    
    if keyboard_check(ord("W")) and !place_meeting(x,y-4,obj_solid) and place_meeting(x,y-4,obj_ladder){
        y -= 4;
    }
    
    if keyboard_check(ord("S")) and !place_meeting(x,y+4,obj_solid) {
        y += 4;
    }
    
    with obj_ladder {
        if place_meeting(x,y,obj_player){
            if round(other.h_speed) == 0 {
                other.x = lerp(other.x,x+16,0.1)
            }
        }
    }
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
	
	
	if keyboard_check_pressed(vk_space) and grounded and !place_meeting(x,y-4,obj_ladder){
		vspeed -= 6;
        audio_play_sound(snd_jump,1,false)
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


if keyboard_check_pressed(vk_up){
    global.shooting_speed += 0.1;
}

platform = !keyboard_check(ord("S"));

if abs(round(h_speed)) != 0 and grounded {
    if leg_frame < 10 {
        leg_frame += 0.25;
        
        if !audio_is_playing(snd_move){
            audio_play_sound(snd_move,0,false);
        }
    }else {
        leg_frame = 0
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
	
	if head_angle > 395{
		head_angle = 395;	
	}
	
	if head_angle < 325{
		head_angle = 325;	
	}
	
	arm_angle = point_direction(x,y,mouse_x,mouse_y)+180;
}

if place_meeting(x,y,obj_enemybullet){
    var bulletid = instance_place(x,y,obj_enemybullet);
    global.hp -= bulletid.damage;
    instance_destroy(bulletid);
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