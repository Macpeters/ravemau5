/// @description Cleanup

//reset movement vars
global.leftMove = false;
global.rightMove = false;
global.upMove = false

//remove the stick
with(stick){
    instance_destroy();
}

