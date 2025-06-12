frontposx = x+lengthdir_x(288,image_angle);
frontposy = y+lengthdir_y(288,image_angle);

leftposx = x+lengthdir_x(288,image_angle+90);
leftposy = y+lengthdir_y(288,image_angle+90);

rightposx = x+lengthdir_x(288,image_angle-90);
rightposy = y+lengthdir_y(288,image_angle-90);

if place_meeting(x,y,obj_rangenend){
    type = 1;
    deadend = true;
    exit;
}

if !created {
    if !check_side(frontposx,frontposy) and !check_side(leftposx,leftposy) and !check_side(rightposx,rightposy) {
        scr_createrooms();
    
    } else if !check_side(frontposx,frontposy) and check_side(leftposx,leftposy) and check_side(rightposx,rightposy) {
        type = 0;
        if global.rangen_size >= 0{
            with instance_create_depth(frontposx,frontposy,-1,obj_rangen_dummy){
                image_xscale = 18;
                image_yscale = 18;
                global.rangen_size -= 1;
                starter = false;
                image_angle = other.image_angle;
            }
        } else {
            if !check_side(frontposx,frontposy){
                with instance_create_depth(frontposx,frontposy,-1,obj_rangen_dummy){
                    image_xscale = 18;
                    image_yscale = 18;
                    starter = false;
                    image_angle = other.image_angle;
                    type = 1;
                    deadend = true;
                }	
            } else {
                deadend = true;
                type = 1;
            }
        }
    } else {
        deadend = true;
        type = 1;
    }
    created = true;
} else {
    if (image_angle >= 360){
         image_angle -= 360;
    }
    
    if (image_angle < 0){
         image_angle += 360;
    }
}
