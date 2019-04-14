/// @description Move

//if there are any entities on top
while(place_meeting(x, y-1, par_entity)){
 with(instance_place(x, y-1, par_entity)){
    //put them in the list
    ds_list_add(other.onMeList, id);
    //move away the entities for now, so they can all be managed together
    y -= 9999;
 }   
}

//move horizontally
for(i=0; i<abs(hspd); i++){
    if(!place_meeting(x+sign(hspd), y, par_solid)){
        x += sign(hspd);
    }else{
        hspd *= -1;
    }
}

//move vertically
for(i=0; i<abs(vspd); i++){
    if(!place_meeting(x, y+sign(vspd), par_solid)){
        y += sign(vspd);
    }else{
        vspd *= -1;
    }
}

for(i=0; i<ds_list_size(onMeList); i++){
    with(ds_list_find_value(onMeList, i)){
        //bring each entity back now that we've moved the platform
        y += 9999;
        
        for(i = 0; i<abs(other.x-other.xprevious);i++){
            if(!place_meeting(x + sign(other.x-other.xprevious), y, par_solid)){
                x += sign(other.x-other.xprevious);
            }else{
                break;
            }
        }
        
        for(i=0; i<abs(other.y-other.yprevious); i++){
            if(!place_meeting(x,y+sign(other.y - other.yprevious), par_solid)){
                y += sign(other.y-other.yprevious);
            }else{
                break;
            }
        } 
    }
}

ds_list_clear(onMeList);

