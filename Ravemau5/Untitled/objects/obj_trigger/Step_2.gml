/// @description Execute
if (place_meeting(x,y,trObject)) { 
 //Changing view size (arg0 = new view width, arg1 = new view height) 
 if (trType == global.TR_VIEW_SIZE) {
 // gvW = arg0;
 // gvH = arg1;
 }
 //Changing view object (arg0 = new view object to follow)
 if (trType == global.TR_VIEW_OBJECT) {
 // gvObj = arg0;
 }
 //Changing view fixate point (arg0 = new view x, arg1 = new view y)
 if (trType == global.TR_VIEW_POINT) {
  gvObj = -1;
 // gvX = arg0-gvW/2;
  //gvY = arg1-gvH/2;
 }
 //Create a new instance (arg0 = new instance x, arg1 = new instance y, arg2 = new instance type)
 if (trType == global.TR_INSTANCE_CREATE) {
 // instance_create(arg0,arg1,arg2);
 }
 //Destroy an instance/object (arg0 = instance)
 if (trType == global.TR_INSTANCE_DESTROY) {
//  with(arg0) {
//   instance_destroy();
//  }
 }
 //Delete
 if (trOnce = true) {
  instance_destroy();
 }
}

