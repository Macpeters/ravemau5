/// @description Movement
vx = 0;

for(i=0;i<4;i++){
    //Invisible wall trigger
    if(place_meeting(x+sign(image_xscale),y,obj_trigger)){
        if(obj_trigger.trType == global.TR_INVISIBLE_WALL){
            image_xscale *= -1;
        }
    }
    //open space
    else if (!place_meeting(x+sign(image_xscale),y,par_solid)) {
        vx = sign(image_xscale);
    } 
    //there is a wall here, turn back
    else {
        image_xscale *= -1;
        break;
    }
}

x += vx;

///Getting hurt
if hurtClock > 0 {
 visible = !visible;
 hurtClock -= 1;
} else {
 visible = true;
}

if hp <= 0 {
    instance_destroy();
    with instance_create(x,y, par_alert) {
    alert.alertType = global.ENEMY_BEETLE;
    image_xscale = other.image_xscale;
    hspd = other.hspd;
    vspd = other.vspd;
 }
}

