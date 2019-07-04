// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_settings_controller
global.__objectDepths[1] = 0; // level_select_controller
global.__objectDepths[2] = 0; // world_select_controller
global.__objectDepths[3] = 0; // obj_global_controller
global.__objectDepths[4] = 0; // obj_game_controller
global.__objectDepths[5] = 0; // obj_store_controller
global.__objectDepths[6] = 0; // obj_cutscene_controller
global.__objectDepths[7] = -100; // par_alert
global.__objectDepths[8] = 0; // par_enemy
global.__objectDepths[9] = 0; // par_entity
global.__objectDepths[10] = 0; // par_hazard
global.__objectDepths[11] = 0; // par_jumpthrough
global.__objectDepths[12] = 0; // par_player
global.__objectDepths[13] = 0; // par_projectile
global.__objectDepths[14] = -100; // par_solid
global.__objectDepths[15] = -105; // par_weapon
global.__objectDepths[16] = -5; // obj_player
global.__objectDepths[17] = 0; // obj_enemy_beetle
global.__objectDepths[18] = 0; // obj_enemy_slime
global.__objectDepths[19] = 0; // obj_moving_platform
global.__objectDepths[20] = 0; // obj_spring
global.__objectDepths[21] = -100; // obj_ice
global.__objectDepths[22] = -100; // obj_gravity
global.__objectDepths[23] = -120; // obj_trigger
global.__objectDepths[24] = 0; // obj_door
global.__objectDepths[25] = 0; // obj_cheese
global.__objectDepths[26] = 0; // obj_glow_ring
global.__objectDepths[27] = -200; // obj_sparkle
global.__objectDepths[28] = -200; // obj_steam
global.__objectDepths[29] = -200; // obj_snow
global.__objectDepths[30] = -200; // obj_musicParticle
global.__objectDepths[31] = 0; // obj_hud
global.__objectDepths[32] = 0; // obj_levelComplete
global.__objectDepths[33] = 0; // deco
global.__objectDepths[34] = 0; // obj_global_button
global.__objectDepths[35] = 0; // obj_level_select_button
global.__objectDepths[36] = 0; // obj_player_select_button
global.__objectDepths[37] = -105; // obj_exit_level_button
global.__objectDepths[38] = -105; // obj_js_base
global.__objectDepths[39] = -110; // obj_js_stick
global.__objectDepths[40] = 0; // obj_unlock_world


global.__objectNames[0] = "obj_settings_controller";
global.__objectNames[1] = "level_select_controller";
global.__objectNames[2] = "world_select_controller";
global.__objectNames[3] = "obj_global_controller";
global.__objectNames[4] = "obj_game_controller";
global.__objectNames[5] = "obj_store_controller";
global.__objectNames[6] = "obj_cutscene_controller";
global.__objectNames[7] = "par_alert";
global.__objectNames[8] = "par_enemy";
global.__objectNames[9] = "par_entity";
global.__objectNames[10] = "par_hazard";
global.__objectNames[11] = "par_jumpthrough";
global.__objectNames[12] = "par_player";
global.__objectNames[13] = "par_projectile";
global.__objectNames[14] = "par_solid";
global.__objectNames[15] = "par_weapon";
global.__objectNames[16] = "obj_player";
global.__objectNames[17] = "obj_enemy_beetle";
global.__objectNames[18] = "obj_enemy_slime";
global.__objectNames[19] = "obj_moving_platform";
global.__objectNames[20] = "obj_spring";
global.__objectNames[21] = "obj_ice";
global.__objectNames[22] = "obj_gravity";
global.__objectNames[23] = "obj_trigger";
global.__objectNames[24] = "obj_door";
global.__objectNames[25] = "obj_cheese";
global.__objectNames[26] = "obj_glow_ring";
global.__objectNames[27] = "obj_sparkle";
global.__objectNames[28] = "obj_steam";
global.__objectNames[29] = "obj_snow";
global.__objectNames[30] = "obj_musicParticle";
global.__objectNames[31] = "obj_hud";
global.__objectNames[32] = "obj_levelComplete";
global.__objectNames[33] = "deco";
global.__objectNames[34] = "obj_global_button";
global.__objectNames[35] = "obj_level_select_button";
global.__objectNames[36] = "obj_player_select_button";
global.__objectNames[37] = "obj_exit_level_button";
global.__objectNames[38] = "obj_js_base";
global.__objectNames[39] = "obj_js_stick";
global.__objectNames[40] = "obj_unlock_world";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for