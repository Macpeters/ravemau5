playerChoice = global.playerChoice;

{ switch (playerChoice) {
    case global.SHUTTER_SHADE:
     standing_sprite = spr_shutter_shade_stand;
     running_sprite = spr_shutter_shade_run;
     jumping_sprite = spr_shutter_shade_air;
    break;
   case global.SKRILLIX:
    standing_sprite = spr_skrillix_stand;
    running_sprite = spr_skrillix_run;
    jumping_sprite = spr_skrillix_air;
    break;
   case global.PINK_FUNFUR:
    standing_sprite = spr_pink_funfur_stand;
    running_sprite = spr_pink_funfur_run;
    jumping_sprite = spr_pink_funfur_air;
    break;
   case global.BLUE_FUNFUR:
    standing_sprite = spr_blue_funfur_stand;
    running_sprite = spr_blue_funfur_run;
    jumping_sprite = spr_blue_funfur_air;
    break;
   default:
    standing_sprite = spr_player_stand;
    running_sprite = spr_player_run;
    jumping_sprite = spr_player_air;
   }
}