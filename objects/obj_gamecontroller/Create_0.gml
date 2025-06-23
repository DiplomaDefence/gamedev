surface_resize(application_surface,view_wview,view_hview);
viewx = x;
viewy = y;
global.start = false;

bonus_pick = false;
bonus1 = false;
bonus2 = false;
bonus3 = false;

viewx_center = x;
viewy_center = y;
global.enemycount = 0;
global.max_enemycount = 0;
global.win = false;

function deactivate(){
    instance_deactivate_all(true)
    instance_activate_object(obj_camera)
    instance_activate_object(obj_rangen_controller)
        
    instance_activate_object(obj_rangen_room)
    instance_activate_object(obj_wall)
    instance_activate_object(obj_platform)
    instance_activate_object(obj_fakeoutline)
        
    instance_activate_object(obj_background)
}

function activate(){
    instance_activate_all();
    instance_destroy(obj_button);
}

global.shake = 0;

instance_create_depth(x,y,-1,obj_camera)

var map_string = "abcdefghijklmnopqrstuvwxyz.!?_1234567890"
global.pixfont = font_add_sprite_ext(spr_pixelfont, map_string, true, 1);
global.pixfont_small = font_add_sprite_ext(spr_pixelfont_small, map_string, true, 1);

depth = -999


alarm[0] = 120;