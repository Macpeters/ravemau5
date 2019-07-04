/// @description Draw the right sprite for this world

//Get the sprite
opacity = 1;
get_global_btn_sprite(self.buttonWorld);

//Toggle opacity depending on settings
{ switch (buttonType) {
   case global.BUTTON_SFX:
    if(!global.sfx_on){
        opacity = 0.5;   
    }
   break;
   case global.BUTTON_MUSIC:
    if(!global.music_on){
        opacity = 0.5;   
    }
   break;
   default:
   }
}

draw_sprite_ext( sprite, 1, x, y, 1.5, 1.5, 0, c_white, opacity );




