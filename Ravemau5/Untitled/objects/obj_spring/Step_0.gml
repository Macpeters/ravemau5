/// @description Functioning
while(place_meeting(x, y, par_entity)){
    with(instance_place(x, y, par_entity)){
        ds_list_add(other.onMeList, id);
        y -= 9999;
    }
}

if(ds_list_size(onMeList) > 0){
    for(i=0; i<ds_list_size(onMeList); i++){
        with(ds_list_find_value(onMeList, i)){
            y += 9999;
            hspd = lengthdir_x(1, other.image_angle+90)*other.pwr;
            vspd = lengthdir_y(1, other.image_angle+90)*other.pwr;
        }
    }
    image_speed = 1;
}

ds_list_clear(onMeList);


