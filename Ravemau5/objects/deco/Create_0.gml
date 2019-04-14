/// @description slow down animation
get_deco_sprite();
image_speed = 0.01;

if(global.world == global.WORLD_SEWER){
    instance_create(x+16, y-50, obj_steam);
}

