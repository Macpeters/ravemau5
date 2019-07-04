/// @description Move

//for each entity on top
while(place_meeting(x, y-1, par_entity)){
    with(instance_place(x, y-1, par_entity)){
        //add it to the list
        ds_list_add(other.onMeList, id);
        //move it out of the way for now
        y -= 9999;
    }
}

for(i=0; i<ds_list_size(onMeList); i++){
    with(ds_list_find_value(onMeList, i)){
        //bring each item back, adjust friction
        y += 9999;
        multiF *= other.multiF;
    }
}
//clean list up for the next round
ds_list_clear(onMeList);

