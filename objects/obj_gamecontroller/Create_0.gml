surface_resize(application_surface,view_wview,view_hview);
viewx = x;
viewy = y;
global.start = false;

viewx_center = x;
viewy_center = y;
global.win = 0;

global.shake = 0;

instance_create_depth(x,y,-1,obj_camera)

var map_string = "abcdefghijklmnopqrstuvwxyz.!?_1234567890"
global.pixfont = font_add_sprite_ext(spr_pixelfont, map_string, true, 1);
global.pixfont_small = font_add_sprite_ext(spr_pixelfont_small, map_string, true, 1);

depth = -999

global.max_hp = 20;
global.hp = global.max_hp;

global.pause = false;

global.shooting_speed = 0.0;
global.damage = 5;

global.damage_item = 0;
global.speed_item = 0;
global.health_item = 0;
global.shooting_speed_item = 0;
global.crit_chance_item = 0;
global.crit_damage_item = 0;

global.damage_modifier = 1.0;
global.crit_percentage = 50;
global.crit_damage_modifier = 1.0;
global.speed_modifier = 1.0;
global.health_modifier = 1.0;
alarm[0] = 120;