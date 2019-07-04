/// @description Update position of base and stick

//keep the stick's origin on the base's origin
obj_js_stick.Xpos = x;
obj_js_stick.Ypos = y;

//put stick at mouse position
obj_js_stick.x = window_view_mouse_get_x(0);
obj_js_stick.y = window_view_mouse_get_y(0);


