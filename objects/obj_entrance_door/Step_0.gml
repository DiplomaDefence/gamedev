if !instance_exists(obj_player) and global.start {
    instance_create_depth(x,y-16,-4,obj_player)
}

if global.start and global.win{
    if !instance_exists(obj_exit_door){
        instance_create_depth(x,y,depth,obj_exit_door);
        instance_destroy();
    }
}