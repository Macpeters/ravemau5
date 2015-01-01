playerChoice = global.playerChoice;

{ switch (playerChoice) {
   case global.SKRILLIX:
    standing_sprite = spr_skrillix_stand;
    running_sprite = spr_skrillix_run;
    jumping_sprite = spr_skrillix_air;
    break;
   default:
    standing_sprite = spr_player_stand;
    running_sprite = spr_player_run;
    jumping_sprite = spr_player_air;
   }
}
