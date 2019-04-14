/// @description make sure all particles are actually destroyed

//sparkle
if(object_exists(obj_sparkle)){
    with(obj_sparkle){
        instance_destroy();
    }
}
//music
if(object_exists(obj_musicParticle)){
    with(obj_musicParticle){
        instance_destroy();
    }
}
//steam
if(instance_exists(obj_steam)){
    with(obj_steam){
        instance_destroy();
    }
}
//snow
if(instance_exists(obj_snow)){
    with(obj_snow){
        instance_destroy();
    }
}

