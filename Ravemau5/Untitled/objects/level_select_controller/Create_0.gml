/// @description Create world buttons, shoppe button
playSong();
num_levels = global.NUM_LEVELS;

//go back to world suggestion
button = instance_create(80, 80, obj_global_button);
button.buttonWorld = global.BUTTON_PLAY; 

//the available levels for that world
for(i=1; i <= num_levels; i++){
  button = instance_create(120 + (i*100), 150, obj_level_select_button);
  button.buttonWorld = global.world;
  button.buttonLevel = i;
}    
//the shoppe button
button = instance_create(100, 300, obj_global_button);
button.buttonWorld = global.BUTTON_SHOPPE; 

