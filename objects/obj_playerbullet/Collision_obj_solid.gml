if bounce > 0 {
    move_bounce_all(true);
    audio_play_sound(snd_jump,0,false);
    bounce --;
} else {
    instance_destroy();
}