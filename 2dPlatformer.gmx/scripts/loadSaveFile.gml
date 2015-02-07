/// C:Users/Mac/AppData/local/2dPlatformer

//Check if ini file exists
if file_exists("ravemow5_save.ini"){
   ini_open("ravemow5_save.ini");
    // load the value, default 0.
    global.glowRings = ini_read_real("score", "glowrings", 0);
    global.beetlesKilled = ini_read_real("score", "beetlesKilled", 0);
    global.points = ini_read_real("score", "points", 0);
   ini_close();
}else {
      // No ini, brand new game, set scoring.
      global.glowRings = 0;
      global.points = 0;
      global.beetlesKilled = 0;
}