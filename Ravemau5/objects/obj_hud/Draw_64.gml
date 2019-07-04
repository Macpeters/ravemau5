/// @description draw overlay, number glowrings, points and hp
draw_sprite(spr_hud, 0, 0, 0);
draw_set_font(fon_hud);
draw_set_color(c_white);

draw_sprite(spr_glow_ring, 0, 40, 0);
draw_text(80,0,string_hash_to_newline(global.glowRings))

draw_sprite(spr_health_alert, 0, 260, 0);
draw_text(300,0,string_hash_to_newline(global.points))

draw_set_color(c_yellow);
draw_text(480, 0, string_hash_to_newline("HP: "));
draw_text(540, 0, string_hash_to_newline(global.hp));
draw_text(580, 0, string_hash_to_newline("/10"));



