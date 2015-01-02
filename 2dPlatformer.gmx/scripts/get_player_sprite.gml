playerChoice = global.playerChoice;

{ switch (playerChoice) {
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
