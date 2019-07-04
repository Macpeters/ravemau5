/// @description Setup Game View
globalvar gvXStart, gvYStart, gvWStart, gvHStart, gvObjStart;
gvXStart = __view_get( e__VW.XView, 0 );
gvYStart = __view_get( e__VW.YView, 0 );
gvWStart = __view_get( e__VW.WView, 0 );
gvHStart = __view_get( e__VW.HView, 0 );
gvObjStart = __view_get( e__VW.Object, 0 );

if instance_exists(gvObj) {
 __view_set( e__VW.XView, 0, min(max(0,gvX),room_width-__view_get( e__VW.WView, 0 )) );
 __view_set( e__VW.YView, 0, min(max(0,gvY),room_height-__view_get( e__VW.HView, 0 )) );
}

global.glow_rings_in_room = instance_number(obj_glow_ring);
global.glow_rings_this_level = 0;
global.beetles_in_room = instance_number(obj_enemy_beetle);
global.beetles_this_level = 0;


