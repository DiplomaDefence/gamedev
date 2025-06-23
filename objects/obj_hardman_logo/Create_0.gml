audio_play_sound(snd_intro,0,false);
alarm[0] = 140;

var map_string = "abcdefghijklmnopqrstuvwxyz.!?_1234567890"
global.pixfont = font_add_sprite_ext(spr_pixelfont, map_string, true, 1);
global.pixfont_small = font_add_sprite_ext(spr_pixelfont_small, map_string, true, 1);

randomize();
global.head = irandom_range(0,3);
global.torso = irandom_range(0,1);
global.arms = irandom_range(0,1);
global.legs = irandom_range(0,2);
global.gun = irandom_range(0,1);

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
global.bounce = false;
global.pass_through = false;

global.head_array = [1];
global.torso_array = [1,0];
global.arm_array = [1,0]
global.leg_array = [1,0,0]
global.gun_array = [1,0]