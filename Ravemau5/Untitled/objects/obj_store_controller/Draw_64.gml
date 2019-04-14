/// @description Draw the chosen player, available glowrings
draw_set_font(fon_hud);
draw_set_color(c_white);
draw_text(380, 20, string_hash_to_newline("Store"));

get_global_btn_sprite(global.playerChoice);

//player area
draw_sprite_ext( spr_hud, 0, 0, 350, 1, 4, 0, c_white, 1 );
draw_text(0, 368, string_hash_to_newline("Your Player:"));
draw_sprite(sprite, 0, 280, 410);
//stats
draw_sprite(spr_glow_ring, 0, 400, 410);
draw_text(450,410,string_hash_to_newline(global.glowRings))

