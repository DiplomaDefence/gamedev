function checkend(posx,posy,angleoffset){
    if !check_side(posx,posy){
        with instance_create_depth(posx,posy,-1,obj_rangen_dummy){
            starter = false;
            image_angle = other.image_angle+angleoffset;
            type = 1;
            deadend = true;
        }	
    } else {
        deadend = true;
        type = 1;
    }
}

function scr_createrooms(){
    
    if place_meeting(x,y,obj_rangenend) or global.rangen_size <= 0{
        type = 1;
        deadend = true;
        exit;
    }
    
    randomize();
    var chance = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9);
    
    if global.rangen_size <= 0 {
        type = 1;
    }
    //var chance = irandom_range(0,9);
        show_debug_message(chance)
        if chance <= 2 {
            type = 0;
            if global.rangen_size > 0{
                with instance_create_depth(frontposx,frontposy,-1,obj_rangen_dummy){
                    image_xscale = 18;
                    image_yscale = 18;
                    global.rangen_size -= 1;
                    starter = false;
                    image_angle = other.image_angle;
                }
            } else {
                checkend(frontposx,frontposy,0);
            }
        } else if chance <= 4 {
            type = 	2
            if global.rangen_size > 0 {
                with instance_create_depth(leftposx,leftposy,-1,obj_rangen_dummy){
                    image_xscale = 18;
                    image_yscale = 18;
                    global.rangen_size -= 1;
                    starter = false;
                    image_angle= other.image_angle+90
                }
            } else {
                checkend(leftposx,leftposy,+90);	
            }
        } else if chance <= 6 {
            type = 	3
            if global.rangen_size > 0 {
                with instance_create_depth(rightposx,rightposy,-1,obj_rangen_dummy){
                    image_xscale = 18;
                    image_yscale = 18;
                    global.rangen_size -= 1;
                    starter = false;
                    image_angle = other.image_angle-90;
                }
            } else {
                checkend(rightposx,rightposy,-90);	
            }
        } else if chance <=7 {
            type = 	6
            if global.rangen_size > 0 {
        
                with instance_create_depth(frontposx,frontposy,-1,obj_rangen_dummy){
                    image_xscale = 18;
                    image_yscale = 18;
                    global.rangen_size -= 1;
                    starter = false;
                    image_angle = other.image_angle;
                }
                
                with instance_create_depth(leftposx,leftposy,-1,obj_rangen_dummy){
                    image_xscale = 18;
                    image_yscale = 18;
                    global.rangen_size -= 1;
                    starter = false;
                    image_angle = other.image_angle+90
                }
            }
            else {
                checkend(leftposx,leftposy,90);
                checkend(frontposx,frontposy,0);	
            }
        } else if chance <=8 {
            type = 	5
            if global.rangen_size > 0 {
        
                with instance_create_depth(frontposx,frontposy,-1,obj_rangen_dummy){
                    image_xscale = 18;
                    image_yscale = 18;
                    global.rangen_size -= 1;
                    starter = false;
                    image_angle = other.image_angle;
                }
                
                with instance_create_depth(rightposx,rightposy,-1,obj_rangen_dummy){
                    image_xscale = 18;
                    image_yscale = 18;
                    global.rangen_size -= 1;
                    starter = false;
                    image_angle = other.image_angle-90
                }
            }
            else {
                checkend(rightposx,rightposy,-90);
                checkend(frontposx,frontposy,0);	
            }
        } else if chance == 9 {
            type = 	4
            if global.rangen_size > 0 {
        
                with instance_create_depth(rightposx,rightposy,-1,obj_rangen_dummy){
                    image_xscale = 18;
                    image_yscale = 18;
                    global.rangen_size -= 1;
                    starter = false;
                    image_angle = other.image_angle-90;
                }
                
                with instance_create_depth(leftposx,leftposy,-1,obj_rangen_dummy){
                    image_xscale = 18;
                    image_yscale = 18;
                    global.rangen_size -= 1;
                    starter = false;
                    image_angle = other.image_angle+90
                }
            }
            else {
                checkend(leftposx,leftposy,90);
                checkend(rightposx,rightposy,-90);	
            }
        }
}
