buttonType = argument[0];

{ switch (buttonType) {
   case global.BUTTON_SHOPPE:
    sprite = spr_button_shoppe;
   break;
   case global.BUTTON_PLAY:
    sprite = spr_btn_play;
   break;
   //settings
   case global.BUTTON_SETTINGS:
    sprite = spr_btn_settings;
   break;
   case global.BUTTON_SFX:
    sprite = spr_btn_sfx;
   break;
   case global.BUTTON_MUSIC:
    sprite = spr_btn_music;
   break;
   //worlds
   case global.WORLD_ICE:
    sprite = spr_lvl_ice;
    break; 
   case global.WORLD_SEWER:
    sprite = spr_lvl_sewer;
    break;
   case global.WORLD_PARLOUR:
    sprite = spr_lvl_parlour;
    break;
   case global.WORLD_DISCO: 
    sprite = spr_lvl_disco;
    break;
   default:
    sprite = spr_solid_square;
   }
}
