songs[0] = aud_menu;
songs[global.WORLD_SEWER] = aud_sewer;
songs[global.WORLD_ICE] = aud_ice;
songs[global.WORLD_PARLOUR] = aud_parlour;
songs[global.WORLD_DISCO] = aud_disco;

audio_stop_all();
world = global.world;
world_song = songs[world]

{   switch(room) {
        case roo_settings:
        case roo_store:
        case roo_world_select:
            if(global.music_on){
                audio_play_sound(songs[0], 10, true);
            }
           break;
        default:
            if(global.music_on){
                audio_play_sound(world_song, 10, true);
            } 
             break;
    }    
}
