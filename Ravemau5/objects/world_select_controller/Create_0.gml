/// @description Create world buttons, shoppe button
playSong();
num_levels = global.NUM_WORLDS;
for(i=1; i<num_levels; i++){
         if(i > global.worldsUnlocked){
              button = instance_create(80 + (i*100), 150, obj_unlock_world);
              button.cost = i * 10;
         }else{
              button = instance_create(75 + (i*100), 105, obj_global_button);
         }
         button.buttonWorld = i;
         button.buttonLevel = 4;
}
//the shoppe button
button = instance_create(100, 300, obj_global_button);
button.buttonWorld = global.BUTTON_SHOPPE;    

//the settings button
button = instance_create(600, 300, obj_global_button);
button.buttonWorld = global.BUTTON_SETTINGS;   

