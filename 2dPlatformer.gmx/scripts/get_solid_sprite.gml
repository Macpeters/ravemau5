world = global.world;
{ switch (world) {
   case global.WORLD_ICE:
    sprite = spr_solid_ice;
    break;
   case global.WORLD_SEWER:
    sprite = spr_solid_sewer;
    break;
   case global.WORLD_PARLOUR:
    sprite = spr_solid_parlour;
    break;
   case global.WORLD_DISCO: 
    sprite = spr_solid_disco;
    break;
   default:
    sprite = spr_solid_square
   }
}