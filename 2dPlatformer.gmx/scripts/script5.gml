playerChoice = global.playerChoice;

{ switch (playerChoice) {
    case global.SHUTTER_SHADE:
     standing_sprite = spr_btn_shutter_shade;
    break;
   case global.SKRILLIX:
    standing_sprite = spr_btn_skrillix;
    break;
   case global.PINK_FUNFUR:
    standing_sprite = spr_btn_pink_funfur;
    break;
   case global.BLUE_FUNFUR:
    standing_sprite = spr_btn_blue_funfur;
    break;
   default:
    standing_sprite = spr_btn_basic;
   }
}
