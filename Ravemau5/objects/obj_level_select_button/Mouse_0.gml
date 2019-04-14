/// @description Enter the level

//Audio
playSong();
if(global.sfx_on){
    audio_play_sound(aud_button_click, 10, false);
}

//keep track of which level was chosen
global.level = buttonLevel;
world = global.world;
//create the level name using the world name and level number
{ switch (world) {
   case global.WORLD_ICE:
    world_name = "roo_ice_";
    break;
   case global.WORLD_SEWER:
    world_name = "roo_sewer_";
    break;
   case global.WORLD_PARLOUR:
     world_name = "roo_parlour_";
    break;
   case global.WORLD_DISCO: 
    world_name = "roo_disco_";
    break;
   default:
    world_name = "roo_sewer_";
    break;
   }
   level = string(buttonLevel);
   level_name = world_name + level;
   //go to the level by that name
   room_goto(asset_get_index(level_name));
}

