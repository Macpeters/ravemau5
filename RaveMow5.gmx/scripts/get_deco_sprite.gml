world = global.world;
{ switch (world) {
   case global.WORLD_ICE:
    sprite = spr_solid_ice;
    break;
   case global.WORLD_SEWER:
    sprite = spr_steamer;
    break;
   case global.WORLD_PARLOUR:
    sprite = spr_plant;
    break;
   case global.WORLD_DISCO: 
    sprite = spr_laser;
    break;
   default:
    sprite = spr_solid_square
   }
}
