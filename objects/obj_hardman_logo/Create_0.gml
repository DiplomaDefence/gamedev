audio_play_sound(snd_intro,0,false);
alarm[0] = 140;

var map_string = "abcdefghijklmnopqrstuvwxyz.!?_1234567890"
global.pixfont = font_add_sprite_ext(spr_pixelfont, map_string, true, 1);
global.pixfont_small = font_add_sprite_ext(spr_pixelfont_small, map_string, true, 1);

randomize();
global.head = 0;
global.torso = irandom_range(0,1);
global.arms = irandom_range(0,1);
global.legs = irandom_range(0,2);
global.gun = irandom_range(0,1);