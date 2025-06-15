if hover {
    image_blend = c_gray;
} else {
    image_blend = c_white;
}
draw_self();
draw_set_font(global.pixfont);
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(x,y,text)