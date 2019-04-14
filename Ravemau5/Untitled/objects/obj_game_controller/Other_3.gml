/// @description Update the Viewport and backgrounds
if(__view_get( e__VW.WView, 0 ) != gvW || __view_get( e__VW.HView, 0 ) != gvH){
    var tempW, tempH;
    tempW = __view_get( e__VW.WView, 0 );
    tempH = __view_get( e__VW.HView, 0 );
    
    //change the size of the view smoothly
    if(gvW/__view_get( e__VW.WPort, 0 ) >= gvH/__view_get( e__VW.HPort, 0 )){
        __view_set( e__VW.HView, 0, lerp(__view_get( e__VW.HView, 0 ), global.gvH, 0.5) );
        __view_set( e__VW.WView, 0, __view_get( e__VW.HView, 0 )/__view_get( e__VW.HPort, 0 )*__view_get( e__VW.WPort, 0 ) );
    } else{
        __view_set( e__VW.WView, 0, lerp(__view_get( e__VW.WView, 0 ), gvW, 0.5) );
        __view_set( e__VW.HView, 0, __view_get( e__VW.WView, 0 )/__view_get( e__VW.WPort, 0 ) * __view_get( e__VW.HPort, 0 ) );
    }

    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - ((__view_get( e__VW.WView, 0 )-tempW)/2) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - ((__view_get( e__VW.HView, 0 )-tempH)/2) );
}
//keep the view within the room
if(__view_get( e__VW.WView, 0 ) > room_width){
    __view_set( e__VW.WView, 0, room_width );
    __view_set( e__VW.HView, 0, __view_get( e__VW.WView, 0 )/__view_get( e__VW.WPort, 0 )*__view_get( e__VW.HPort, 0 ) );
}
if(__view_get( e__VW.HView, 0 ) > room_height){
    __view_set( e__VW.HView, 0, room_height );
    __view_set( e__VW.WView, 0, __view_get( e__VW.HView, 0 )/__view_get( e__VW.HPort, 0 )*__view_get( e__VW.WPort, 0 ) );
}
if instance_exists(gvObj) {
 global.gvX = min(max(0,gvObj.x-__view_get( e__VW.WView, 0 )/2+(__view_get( e__VW.WView, 0 )/10*gvObj.image_xscale)),room_width-__view_get( e__VW.WView, 0 ));
 global.gvY = min(max(0,gvObj.y-__view_get( e__VW.HView, 0 )/2),room_height-__view_get( e__VW.HView, 0 ));
}
//place the view
__view_set( e__VW.XView, 0, min(max(0,lerp(__view_get( e__VW.XView, 0 ),global.gvX,.15)),room_width-__view_get( e__VW.WView, 0 )) );
__view_set( e__VW.YView, 0, min(max(0,lerp(__view_get( e__VW.YView, 0 ),global.gvY,.3)),room_height-__view_get( e__VW.HView, 0 )) );

/* if the player is not touching the trigger, 
the view will revert to default settings */
global.gvW = gvWStart;
global.gvH = gvHStart;


//Backgrounds
//8 is the max number of backgrounds allowed in gamemaker
for(i=0; i<8; i++){
    //don't worry about backgrounds that haven't been chosen
    if(__background_get( e__BG.Visible, i ) == true){
        //horizontal
        if(__background_get( e__BG.Width, i ) != room_width){
            __background_set( e__BG.X, i, __view_get( e__VW.XView, 0 )/(room_width-__view_get( e__VW.WView, 0 ))*(room_width-__background_get( e__BG.Width, i )) );
        }
        //vertical 
        if(__background_get( e__BG.Height, i ) != room_height){
        //Divide by zero error
          //  background_y[i] = view_yview[0]/(room_height-view_hview[0])*(room_height-background_height[i]);
        }
    }
}

/* */
/*  */
