/// @description Get hurt
if hurtClock == 0 && other.hurtClock == 0 && sign(x-other.x) == other.image_xscale {
    //Audio
    if(global.sfx_on){
        audio_play_sound(aud_get_hurt, 10, false);
    }
    hp -= 1;
    hurtClock = 30;
    vspd = -8;
    hspd = sign(x-other.x)*16;
}

