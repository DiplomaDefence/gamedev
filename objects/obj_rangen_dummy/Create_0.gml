starter = true;
type = 0;
pos = false;
deadend = false
alarm[0] = 30;

image_xscale = 18;
image_yscale = 18;

if instance_exists(obj_rangen_dummy){
    starter = false;	
}
function check_side(xpos,ypos){
    return place_meeting(xpos,ypos,obj_rangen_dummy);
}

created = false;
