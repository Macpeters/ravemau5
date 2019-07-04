/// @description Remove the controller, if there is one
if(object_exists(obj_js_base)){
    with(obj_js_base){
        instance_destroy();
    }
}


