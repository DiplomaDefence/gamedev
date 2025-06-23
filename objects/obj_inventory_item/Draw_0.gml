draw_self();
switch type {
    case 0:
        switch item {
            case 0: draw_sprite_part(spr_robothead_0, 0, 17, 13, 30, 30, x, y); break;
            case 1: draw_sprite_part(spr_robothead_1, 0, 17, 13, 30, 30, x, y); break;
            case 2: draw_sprite_part(spr_robothead_2, 0, 17, 13, 30, 30, x, y); break;
            case 3: draw_sprite_part(spr_robothead_3, 0, 17, 13, 30, 30, x, y); break;
        }
    break;
}
if hover {
    draw_sprite(spr_inventory_tab_selector,0,x,y);
}