get_global_btn_sprite(self.buttonWorld);

draw_sprite(spr_unlock_world, 0, x, y);
//draw_sprite_ext( sprite, subimg, x, y, xscale, yscale, rot, colour, alpha );
draw_sprite_ext( sprite, 1, x, y-40, 1.5, 1.5, 0, c_white, 1 );

//cost
next_world = global.worldsUnlocked + 1;
if(self.buttonWorld == next_world || self.buttonWorld > 200){
  cost_x = x;
  cost_y = y + 30;
  draw_set_font(fon_hud);
  draw_set_color(c_black);
  draw_text(cost_x - 40, cost_y, string_hash_to_newline(string(cost)));
  draw_sprite(spr_glow_ring, 0, cost_x, cost_y + 5); 
}


