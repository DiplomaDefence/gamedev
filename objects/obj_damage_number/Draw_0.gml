draw_set_font(global.pixfont_small);
draw_set_color(c_black)
draw_text(x+1,y+1,text)
draw_text(x+1,y-1,text)
draw_text(x-1,y+1,text)
draw_text(x-1,y-1,text)
draw_text(x+1,y,text)
draw_text(x-1,y,text)
draw_text(x,y+1,text)
draw_text(x,y-1,text)

if crit {
    draw_set_color(c_red)
} else {
    draw_set_color(c_white)
}
draw_text(x,y,text)