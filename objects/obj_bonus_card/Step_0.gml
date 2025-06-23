image_yscale = lerp (image_yscale,12,0.5);
hover = collision_circle(mouse_x, mouse_y, 1, self, true, false);

if hover {
    image_blend = c_gray;
} else {
    image_blend = c_white;
}