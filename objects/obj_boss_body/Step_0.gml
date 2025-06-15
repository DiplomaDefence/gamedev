y = y_target - y_offset

if move_points > 0 {
    move_points --;
    
    if move_points > 20 {
        if y_offset < max_y_offset {
            y_offset += 0.5;
        }
    } else {
        if y_offset > 0 {
            y_offset -= 0.5;
        }
    }
    
    if instance_exists(obj_player){
        if obj_player.x >= x {
            x++;
        } else {
            x--;
        }
    }
    
} else {
    if alarm[0] == -1 {
        alarm[0] = 120;
        global.shake = 4;
        audio_play_sound(snd_heavy_step,0,false);
    }
    
    if y_offset > 0 {
        y_offset -= 0.5;
    }
}