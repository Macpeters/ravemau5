alertType = argument[0];

{ switch (alertType) {
   case global.HEALTH:
    sprite = spr_health_alert;
    break;
   case global.SICK:
    sprite = spr_sick_alert;
    break;
   case global.DEATH:
    sprite = spr_death_alert
    break;
   case global.GLOWRING: 
    sprite = spr_glow_ring;
    break;
   case global.CHEESE:
    sprite = spr_cheese;
    break;
   case global.ENEMY_BEETLE:
    sprite = spr_enemy_beetle;
    break;
   default:
    sprite = spr_solid_square
   }
}