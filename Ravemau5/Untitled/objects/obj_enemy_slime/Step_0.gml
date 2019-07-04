/// @description Bounce
if(jumpClock <= 0 && inAir == false){
   vspd = -15;
   jumpClock = jumpWaitTime;
}else{
    jumpClock -= 1;
}

