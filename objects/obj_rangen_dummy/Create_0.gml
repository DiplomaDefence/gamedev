randomize();

type = 0;
pos = false;
deadend = false
alarm[0] = 30;

image_xscale = 18;
image_yscale = 18;

starter = true;

//image_angle = choose(0,90,180,270);

if instance_number(obj_rangen_dummy)<= 1 {
    
    x = choose(1296, 1584, 1872, 2160, 2448, 2736, 3024, 3312)
    y = choose(1296, 1584, 1872, 2160, 2448, 2736, 3024, 3312)
    image_angle = choose(0,90,180,270);
    type = irandom_range(0,5)
    instance_create_depth(x,y,-1,obj_player)
}

function check_side(xpos,ypos){
    return place_meeting(xpos,ypos,obj_rangen_dummy);
}

created = false;