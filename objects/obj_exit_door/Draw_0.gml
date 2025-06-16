draw_self();

if global.win {
    if instance_exists(obj_player){
        if distance_to_object(obj_player) < 16 {
            
            var text = "E" 
            draw_set_font(global.pixfont);
            draw_set_color(c_black)
            draw_text(x+1,y+1,text)
            draw_text(x+1,y-1,text)
            draw_text(x-1,y+1,text)
            draw_text(x-1,y-1,text)
            draw_text(x+1,y,text)
            draw_text(x-1,y,text)
            draw_text(x,y+1,text)
            draw_text(x,y-1,text)
            draw_set_color(c_white)
            draw_text(x,y,text) 
        }
    }
}