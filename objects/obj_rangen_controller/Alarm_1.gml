with obj_rangen_dummy{
    
    with instance_create_depth(x,y,depth,obj_rangen_room){
        image_index = other.type;
        
        
        if other.image_angle == 0 {
            sprite_index = spr_rangen_walls_a_right
        } else if other.image_angle == 180 {
            sprite_index = spr_rangen_walls_a_left
        }
    }
}


instance_destroy(obj_rangen_dummy);
