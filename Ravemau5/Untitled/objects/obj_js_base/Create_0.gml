/// @description Set the position to the initial mouse position, add the stick
//base
Xpos = window_view_mouse_get_x(0);
Ypos = window_view_mouse_get_y(0);
x = Xpos;
y = Ypos;
//stick
stick = instance_create(x, y,obj_js_stick);
stick.Xpos = 439;
stick.Ypos = 420;
width = sprite_get_width(0);

