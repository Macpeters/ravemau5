/// @description unlock if unlockable

//World
if(self.buttonWorld == next_world && global.glowRings >= cost){
    //Audio
    if(global.sfx_on){
        audio_play_sound(aud_button_click, 10, false);
    }
  //Apply cost, unlock world  
  global.glowRings -= cost;
  global.worldsUnlocked += 1;
  button = instance_create(x-5, y-45, obj_global_button);
  button.buttonWorld = self.buttonWorld;
  instance_destroy();
  
//Player
}else if(self.buttonWorld > 200 && global.glowRings >= cost){
    //Audio
    if(global.sfx_on){
        audio_play_sound(aud_button_click, 10, false);
    }
    //Apply cost, unlock player
    global.glowRings -= cost;
    global.playersUnlocked[self.buttonWorld - 200] = 1;
    button = instance_create(x-5, y-45, obj_player_select_button);
    button.playerChoice = self.buttonWorld;
    global.playerChoice = self.buttonWorld;
    instance_destroy();
}

