/// @description Move
while(place_meeting(x, y, par_entity)){
    with(instance_place(x, y-1, par_entity)){
        ds_list_add(other.onMeList, id);
        y -= 9999;
    }
}

for(i=0; i<ds_list_size(onMeList); i++){
    with(ds_list_find_value(onMeList, i)){
        y += 9999;
        multiG *= other.multiG;
    }
}

ds_list_clear(onMeList);

