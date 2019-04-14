/// @description Create alert, add points, play sound

//Audio
if(global.sfx_on){
    audio_play_sound(aud_collectable, 10, false);
}

//Alert
alert = instance_create(self.x, self.y, par_alert);
alert.alertType = global.GLOWRING;

//Increase stats
global.glow_rings_this_level += 1;

//Destroy glowring
with(other){
    instance_destroy();
}

