button = argument[0];
playerChoice = button.playerChoice;

{ switch (playerChoice) {
    case global.SHUTTER_SHADE:
    button.sprite = spr_btn_shutter_shade;
    break;
   case global.SKRILLIX:
    button.sprite = spr_btn_skrillix;
    break;
   case global.PINK_FUNFUR:
    button.sprite = spr_btn_pink_funfur;
    break;
   case global.BLUE_FUNFUR:
    button.sprite = spr_btn_blue_funfur;
    break;
   default:
    button.sprite = spr_btn_basic;
   }
}