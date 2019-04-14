/// @description Destroy any remaining particle, if death, restart room
if(sparkleExists){
  with(sparkle){
    instance_destroy();
  }
}

if(alertType == global.DEATH){
    room_restart();
}


