/// @description Count delay to avoid double clicks
if((canToggle == false) && (toggleCount < toggleMax)){
    toggleCount += 1;
}else if(canToggle == false){
    canToggle = true;
    toggleCount = 0;
}


