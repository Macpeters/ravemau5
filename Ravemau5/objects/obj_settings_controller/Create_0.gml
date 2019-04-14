//go back to world suggestion
button = instance_create(80, 80, obj_global_button);
button.buttonWorld = global.BUTTON_PLAY; 

//toggle sfx
button = instance_create(200, 200, obj_global_button);
button.buttonWorld = global.BUTTON_SFX; 

//toggle music
button = instance_create(350, 200, obj_global_button);
button.buttonWorld = global.BUTTON_MUSIC; 

