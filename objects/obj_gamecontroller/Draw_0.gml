viewx = camera_get_view_x(view_camera[0])
viewy = camera_get_view_y(view_camera[0])

viewx_center = viewx+218;
viewy_center = viewy+120;

draw_set_halign(fa_left)

if !global.start{
    draw_sprite(spr_hardman_menu,0,viewx,viewy);
}

if !global.pause{
    draw_set_color(c_white)
    draw_sprite(spr_HUD,0,viewx,viewy);
    draw_set_font(global.pixfont)
    draw_text(viewx+5,viewy+17,global.hp)
    draw_text(viewx+38,viewy+17,global.max_hp)
    
    draw_sprite(spr_crosshair,0,mouse_x,mouse_y);
} else {
    draw_sprite(spr_hardman_pause,0,viewx,viewy);
    draw_sprite_ext(spr_upgrade_window,0,viewx_center,viewy_center,2,12,0,c_white,1);
}