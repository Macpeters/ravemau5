/// @description Determine movement by comparing start position with current

// up and down
if(y > Ypos+20){
  //  global.downMove = true;
    global.upMove = false;
}
else if(y < Ypos-20){
 //   global.downMove = false;
    global.upMove = true;
}
else{
 //   global.downMove = false;
    global.upMove = false;
}


// left and right
if(x > Xpos+20){
    global.rightMove = true;
    global.leftMove = false;
}
else if(x < Xpos-20){
    global.rightMove = false;
    global.leftMove = true;
}
else{
    global.rightMove = false;
    global.leftMove = false;
}

