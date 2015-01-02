world = global.world;
{ switch (world) {
   case global.WORLD_ICE:
    sprite = spr_solid_blue;
    break;
   case global.WORLD_SEWER:
    sprite = spr_solid_orange;
    break;
   case global.WORLD_PARLOUR:
    sprite = spr_solid_pink
    break;
   case global.WORLD_DISCO: 
    sprite = spr_solid_yellow;
    break;
   default:
    sprite = spr_solid_square
   }
}
