if(global.sfx_on){
    audio_play_sound(aud_level_complete, 10, false);
}
instance_create(x, y, obj_levelComplete);
instance_destroy();


