if global.start and global.enemycount <= 0 {
    global.win = true;
}


if keyboard_check_pressed(vk_escape){
    if !global.pause {
        global.pause = true;
        instance_deactivate_all(true)
        instance_activate_object(obj_camera)
        instance_activate_object(obj_rangen_controller)
        
        instance_activate_object(obj_rangen_room)
        instance_activate_object(obj_wall)
        instance_activate_object(obj_platform)
        instance_activate_object(obj_fakeoutline)
        
        instance_activate_object(obj_background)
        
         with instance_create_depth(viewx_center,viewy_center,depth-1,obj_button){
            image_xscale = 8;
            image_yscale = 2;
        }
        
    } else {
        global.pause = false;
        instance_activate_all();
        instance_destroy(obj_button);
    }
}

global.shake = global.shake * 0.9