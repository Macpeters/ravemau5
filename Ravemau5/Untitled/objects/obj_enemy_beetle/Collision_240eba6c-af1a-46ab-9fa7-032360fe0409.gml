/// @description Die
if other.y < y && other.vspd > 0 && other.hurtClock == 0 {
 other.vspd = -12;
 global.beetles_this_level += 1;
 
 //Audio
 if(global.sfx_on){
    audio_play_sound(aud_kill, 10, false);
 }

 with instance_create(x,y,par_alert) {
     alertType = global.ENEMY_BEETLE 
     dir = -1;
     image_xscale = other.image_xscale;
     image_yscale = -1;
     depth = -1000;
     hspd = other.hspd;
     vspd = other.vspd;
 }
 instance_destroy();
}

