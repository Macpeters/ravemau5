draw_sprite(sprite_index, 0, 0, 0);

draw_set_font(fon_hud);
draw_set_color(c_white);

imageX = 200; 
textX = 250;
slashX = 325;
outOfX = 350;
pointsImageX = 420;
pointsX = 450;
 
glowY = 150;
draw_sprite(spr_glow_ring, 0, imageX, glowY);
draw_text(textX, glowY, string_hash_to_newline(global.glow_rings_this_level)) 
draw_text(slashX, glowY, string_hash_to_newline("/"));
draw_text(outOfX, glowY, string_hash_to_newline(global.glow_rings_in_room));
draw_sprite(spr_health_alert, 0, pointsImageX, glowY);
draw_text(pointsX, glowY, string_hash_to_newline(glowPoints));

beetleY = 200
draw_sprite(spr_enemy_beetle, 0, imageX + 16, beetleY + 16)
draw_text(textX, beetleY, string_hash_to_newline(global.beetles_this_level));
draw_text(slashX, beetleY, string_hash_to_newline("/"));
draw_text(outOfX, beetleY, string_hash_to_newline(global.beetles_in_room));
draw_text(pointsX, beetleY, string_hash_to_newline(beetlesPoints));
draw_sprite(spr_health_alert, 0, pointsImageX, beetleY);
draw_text(pointsX, beetleY, string_hash_to_newline(beetlesPoints));

draw_text(250, 400, string_hash_to_newline("Continue"));

