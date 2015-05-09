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
    //players
   case global.BASIC_PLAYER:
    sprite = spr_btn_basic;
    break;
   case global.SHUTTER_SHADE:
    sprite = spr_btn_shutter_shade;
    break;
   case global.SKRILLIX:
    sprite = spr_btn_skrillix;
    break;
   case global.PINK_FUNFUR:
    sprite = spr_btn_pink_funfur;
    break;
   case global.BLUE_FUNFUR:
    sprite = spr_btn_blue_funfur;
    break;
    //default
   default:
    sprite = spr_solid_square;
   }
}