outline = instance_create_depth(x,y,depth+50,obj_fakeoutline);

with outline{
    depth = other.depth + 50
    sprite_index = other.sprite_index
    image_index = other.image_index
}

function create_entrance_door(in_x, in_y){
    if !instance_exists(obj_entrance_door){
        instance_create_depth(in_x,in_y,depth-1,obj_entrance_door);
    }
}