/// @description If there is no current alert, add a sick alert and take health

if(!instance_exists(par_alert)){
    //Audio
    if(global.sfx_on){
        audio_play_sound(aud_get_hurt, 10, false);
    }
    hp -= 1;  
    if(hp > 0){
          alert = instance_create(self.x, self.y, par_alert);
          alert.alertType = global.SICK;
    }
}

