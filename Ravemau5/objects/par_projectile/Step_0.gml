if(!moving){
    if(vspd != 0 || hspd != 0){
        moving = true;
    }
}

if(moving && vspd == 0 && hspd == 0){
    instance_destroy();
}
if(y > room_height || y < 0 || x > room_width || x < 0){
    instance_destroy();
}          

