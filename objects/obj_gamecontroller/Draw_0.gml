viewx = camera_get_view_x(view_camera[0])
viewy = camera_get_view_y(view_camera[0])

viewx_center = viewx+218;
viewy_center = viewy+120;

draw_set_halign(fa_left)

if !global.start{
    draw_sprite(spr_hardman_menu,0,viewx,viewy);
}

if !global.pause{
    if global.start {
        draw_set_color(c_white)
        draw_sprite(spr_HUD,0,viewx,viewy);
        draw_set_font(global.pixfont)
        draw_text(viewx+5,viewy+17,global.hp)
        draw_text(viewx+38,viewy+17,global.max_hp)
        draw_sprite_ext(spr_healthbar,0,viewx+67,viewy+8,(global.hp/global.max_hp),1,0,c_white,1);
        
        draw_text(viewx+222,viewy+1,global.enemycount)
        
        draw_sprite(spr_crosshair,0,mouse_x,mouse_y);
    }
} else {
    draw_sprite(spr_hardman_pause,0,viewx,viewy);
    
    if !bonus_pick{
        draw_sprite_ext(spr_upgrade_window,0,viewx_center,viewy_center,2,12,0,c_white,1);
    } else {
        
        if !bonus1{
            bonus1 = true;
            instance_create_depth(viewx_center-128,viewy_center,depth-1,obj_bonus_card)
        }
        if !bonus2{
            bonus2 = true;
            instance_create_depth(viewx_center,viewy_center,depth-1,obj_bonus_card)
        }
        if !bonus3{
            bonus3 = true;
            instance_create_depth(viewx_center+128,viewy_center,depth-1,obj_bonus_card)
        }
        
        if keyboard_check_pressed(vk_escape){
            bonus_pick = false;
            global.pause = false;
            activate();
            instance_destroy(obj_bonus_card);
        }
    }
}