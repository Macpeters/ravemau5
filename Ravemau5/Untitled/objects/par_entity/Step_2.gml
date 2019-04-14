/// @description Physics
if(unstick(4) > 8){
    instance_destroy();
}

//horizontal movement
for(i=0; i < abs(hspd); i+=1){
    //collision
    if(place_meeting(x+sign(hspd), y, par_solid)){
        //slopes
        if(place_meeting(x+sign(hspd), y-1, par_solid)){
            hspd = 0;
        } else{
            x += sign(hspd);
            y -= 1;
            hspd = sign(hspd) * max(abs(hspd) - 1, 0);   
        }
    }else {
        //no slope, just move
        x += sign(hspd);
    }
}

//friction
if(hspd > 0){
    hspd = max(0, hspd-f*multiF);
} else if(hspd < 0){
    hspd = min(0, hspd+f*multiF);
}
multiF = 1;

//gravity
vspd += g * multiG;
multiG = 1;

//vertical movement
/*
for(i=0; i < abs(vspd); i += 1){
    if(place_meeting(x, y+sign(vspd), par_solid)){
        vspd = 0;                                         
    } else if(place_meeting(x, y+sign(vspd), par_jumpthrough) && vspd > 0){  
        vspd = 0;
    }else {
        y += sign(vspd);
    }
}*/

for(i=0; i < abs(vspd); i += 1){
    if(place_meeting(x, y+sign(vspd), par_solid)){
        vspd = 0;                                         
    } 
    else {
         //TODO: get the height of the sprite/2
         bottomY = y + 16;
         instance = instance_position(x, bottomY+sign(vspd), par_jumpthrough);
         if(instance && vspd > 0){
             vspd = 0;         
         }else{
               y += sign(vspd);
         }
    }
}

if(place_meeting(x, y+1, par_solid) || place_meeting(x, y+1, par_jumpthrough)){
    inAir = false;
}else {
    inAir = true;
}


/* */
/*  */
