if global.start and global.enemycount <= 0 {
    if !global.win{
        deactivate();
        global.win = true;
        bonus_pick = true;
        global.pause = true;
        instance_destroy(obj_button);
    }
}

if !bonus_pick{
    instance_destroy(obj_bonus_card)
}

if keyboard_check_pressed(vk_escape) and !bonus_pick{
    if !global.pause {
        global.pause = true;
        deactivate();
        
         with instance_create_depth(viewx_center,viewy_center,depth-1,obj_button){
            image_xscale = 8;
            image_yscale = 2;
        }
        
    } else if !bonus_pick{
        global.pause = false;
        activate();
    }
}

global.shake = global.shake * 0.9