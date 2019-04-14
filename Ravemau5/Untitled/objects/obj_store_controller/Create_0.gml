/// @description Draw all the player choices, and the button back to level select
//back to level selection
button = instance_create(80, 80, obj_global_button);
button.buttonWorld = global.BUTTON_PLAY;

for(i=0; i < global.NUM_PLAYER_CHOICES; i++){
    if(global.playersUnlocked[i]){
        button = instance_create(65 + i * 120, 210, obj_player_select_button);
        button.playerChoice = 200 + i;
        get_player_btn_sprite(button);
    }else{
        button = instance_create(65 + (i*120), 250, obj_unlock_world);
        button.cost = i * 20;
        button.buttonWorld = 200 + i;
    }
}




