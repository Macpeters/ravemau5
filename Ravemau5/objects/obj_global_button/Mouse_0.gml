/// @description Go to level select, store, or back
//Audio
if(global.sfx_on){
    audio_play_sound(aud_button_click, 10, false);
}

{ switch (buttonWorld) {
   case global.BUTTON_SHOPPE:
        room_goto(roo_store);
        break;
   case global.BUTTON_PLAY:
        room_goto(roo_world_select);
        break;
   case global.BUTTON_SETTINGS:
        room_goto(roo_settings);
        break;
   case global.BUTTON_SFX:
        if(canToggle){
            global.sfx_on = !global.sfx_on;
            canToggle = false;
        }
       break;
   case global.BUTTON_MUSIC:
        if(canToggle){
            global.music_on = !global.music_on;
            canToggle = false;
        }
        break;
   case global.WORLD_ICE:
   case global.WORLD_SEWER:
   case global.WORLD_PARLOUR:
   case global.WORLD_DISCO: 
        global.world = buttonWorld;
        room_goto(roo_level_select);
    break
   default:
           room_goto(roo_world_select);
           break;
   }
}


