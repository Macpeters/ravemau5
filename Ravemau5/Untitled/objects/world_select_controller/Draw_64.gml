/// @description Draw the available glowrings
draw_sprite_ext( spr_hud, 0, 0, 350, 1, 4, 0, c_white, 1 );
draw_set_font(fon_hud);
draw_set_color(c_white);
draw_sprite(spr_glow_ring, 0, 400, 410);
draw_text(450,410,string_hash_to_newline(global.glowRings))

