randomize()
image_index = irandom_range(0,1);

with instance_create_depth(x,y,depth+50,obj_fakeoutline){
    depth = other.depth + 50
    sprite_index = other.sprite_index
    image_index = other.image_index
}