draw_self();

if global.win {
    if instance_exists(obj_player){
        if distance_to_object(obj_player) < 16 {
            
            draw_set_halign(fa_center)
            var text = "e" 
            draw_set_font(global.pixfont);
            draw_set_color(c_black)
            draw_text(x+1,y+1-38,text)
            draw_text(x+1,y-1-38,text)
            draw_text(x-1,y+1-38,text)
            draw_text(x-1,y-1-38,text)
            draw_text(x+1,y-38,text)
            draw_text(x-1,y-38,text)
            draw_text(x,y+1-38,text)
            draw_text(x,y-1-38,text)
            draw_set_color(c_white)
            draw_text(x,y-38,text) 
        }
    }
}