if !audio_is_playing(muzz_menu) and !audio_is_playing(muzz_menu2){
    audio_play_sound(muzz_menu,0,true);
    audio_play_sound(muzz_menu2,0,true);
    audio_sound_gain(muzz_menu2,0,1)
}