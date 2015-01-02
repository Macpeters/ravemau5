world = global.world;
{ switch (world) {
   case global.WORLD_ICE:
    sprite = spr_jumpthrough_blue;
    break;
   case global.WORLD_SEWER:
    sprite = spr_jumpthrough_green;
    break;
   case global.WORLD_PARLOUR:
    sprite = spr_jumpthrough_purple;
    break;
   case global.WORLD_DISCO: 
    sprite = spr_jumpthrough_pink;
    break;
   default:
    sprite = spr_solid_square
   }
}
