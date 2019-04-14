/// @description Draw the right sprite for this world
draw_set_font(fon_hud);
draw_set_color(c_black);
draw_text(360, 20, string_hash_to_newline("Level Select"));
world = global.world;

switch (buttonWorld) {
   case global.BUTTON_SHOPPE:
    sprite = spr_button_shoppe;
   break;
   case global.BUTTON_PLAY:
    sprite = spr_btn_play;
   break;
   case global.WORLD_ICE:
    sprite = spr_lvl_ice;
    break; 
   case global.WORLD_SEWER:
    sprite = spr_lvl_sewer;
    break;
   case global.WORLD_PARLOUR:
    sprite = spr_lvl_parlour;
    break;
   case global.WORLD_DISCO: 
    sprite = spr_lvl_disco;
    break;
   default:
    sprite = spr_solid_square;
   }
draw_sprite_ext( sprite, 1, x, y, 1.5, 1.5, 0, c_white, 1 );
draw_text(x-15, y+5, string_hash_to_newline(buttonLevel));

