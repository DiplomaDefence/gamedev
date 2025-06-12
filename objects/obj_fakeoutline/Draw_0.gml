var _w = 1;

draw_sprite_ext(sprite_index, image_index, x + _w, y + _w, image_xscale, image_yscale, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + _w, y - _w, image_xscale, image_yscale, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x - _w, y + _w, image_xscale, image_yscale, image_angle, c_black, image_alpha);
draw_sprite_ext(sprite_index, image_index, x - _w, y - _w, image_xscale, image_yscale, image_angle, c_black, image_alpha);
