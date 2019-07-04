/// @description Move and Fade
self.y -= dir;
sprite_alpha -= 0.01;
if(sprite_alpha <= 0){
   instance_destroy();
}

if(sparkleExists){
  if(alertType > global.COLLECTABLES){
   with(sparkle){
     instance_destroy();
   }
   sparkleExists = false;
  }
}

