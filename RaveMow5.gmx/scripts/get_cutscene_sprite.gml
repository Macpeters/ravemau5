world = global.world;
{ switch (world) {
   case global.WORLD_ICE:
    sprite = spr_ice_cutscene;
    break;
   case global.WORLD_SEWER:
   sprite = spr_sewer_cutscene;
    break;
   case global.WORLD_PARLOUR:
    sprite = spr_parlour_cutscene;
    break;
   case global.WORLD_DISCO: 
    sprite = spr_disco_cutscene;
    break;
   default:
    sprite = spr_solid_square
   }
}
