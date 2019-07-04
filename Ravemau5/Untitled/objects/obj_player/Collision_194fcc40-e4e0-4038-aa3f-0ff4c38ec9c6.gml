/// @description Get hurt
if(hurtClock == 0) {
    //Audio
    if(global.sfx_on){
        audio_play_sound(aud_get_hurt, 10, false);
    }
 hp -= 1;
 hurtClock = 30;
}

