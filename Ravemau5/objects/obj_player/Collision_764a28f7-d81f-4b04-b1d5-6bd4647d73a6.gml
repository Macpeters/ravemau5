/// @description gain health, destroy cheese
alert = instance_create(self.x, self.y, par_alert);
alert.alertType = global.CHEESE;
hp += 1;
global.points += 10;
with(other){
    instance_destroy();
}

//Audio
if(global.sfx_on){
    audio_play_sound(aud_collectable, 10, false);
}

