/// @description Draw the player sprite and name
//draw_sprite(sprite, 0, x, y);
get_global_btn_sprite(self.playerChoice);
draw_sprite_ext(sprite, 0, x, y, 1.5, 1.5, 0, c_white, 1 );

//name
{ switch (self.playerChoice) {
   case global.SHUTTER_SHADE:
    name = "Shutr Shane"
    break;
   case global.SKRILLIX:
    name = "Squealix";
    break;
   case global.PINK_FUNFUR:
    name = "Fly Frieda";
    break;
   case global.BLUE_FUNFUR: 
    name = "Kandi Karl";
    break;
   default:
    name = "Ravemau5";
   }
}

draw_set_font(fon_names);
draw_set_color(c_black);
draw_text(x - 50, y - 80, string_hash_to_newline(name));

