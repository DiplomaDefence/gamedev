outline = instance_create_depth(x,y,depth+50,obj_fakeoutline);

with outline{
    depth = other.depth + 50
    sprite_index = other.sprite_index
    image_index = other.image_index
}