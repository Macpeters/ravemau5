world = global.world;
{ switch (world) {
   case global.WORLD_ICE:
    sprite = spr_jumpthrough_ice;
    break;
   case global.WORLD_SEWER:
    sprite = spr_jumpthrough_sewer;
    break;
   case global.WORLD_PARLOUR:
    sprite = spr_jumpthrough_parlour;
    break;
   case global.WORLD_DISCO: 
    sprite = spr_jumpthrough_disco;
    break;
   default:
    sprite = spr_solid_square
   }
}