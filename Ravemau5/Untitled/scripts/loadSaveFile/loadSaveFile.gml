/// @description  C:Users/Mac/AppData/local/2dPlatformer

//Check if ini file exists
if file_exists("ravemow5_save.ini"){
   ini_open("ravemow5_save.ini");
    // load the value, default 0.
    global.glowRings = ini_read_real("score", "glowrings", 0);
    global.beetlesKilled = ini_read_real("score", "beetlesKilled", 0);
    global.points = ini_read_real("score", "points", 0);
    global.worldsUnlocked = ini_read_real("score", "worldsUnlocked", 0);
    global.levelsUnlocked = ini_read_real("score", "levelsUnlocked", 0);
    // load default settings, default to true(1)
    global.playerChoice = ini_read_real("settings", "player_choice", global.BASIC_PLAYER);
    global.sfx_on = ini_read_real("settings", "sfx_on", 1);
    global.music_on = ini_read_real("settings", "music_on", 1);
    
    //unlocked avatars
    for(var i = 0; i < global.NUM_PLAYER_CHOICES; i++){
        num = string(i);
        str = "playerChoice-" + num; 
        global.playersUnlocked[i] = ini_read_real("avatars", str, 0);
    }
    
   ini_close();
}else {
      // No ini, brand new game, set scoring.
      global.glowRings = 5000;
      global.points = 0;
      global.beetlesKilled = 0;
      global.worldsUnlocked = 3;
      global.levelsUnlocked = 4;
      global.sfx_on = false;
      global.music_on = false;
      global.playerChoice = global.BASIC_PLAYER;
      for(var i = 0; i < global.NUM_PLAYER_CHOICES; i++){
        if(i < 2){
            global.playersUnlocked[i] = 4;
        }else{
            global.playersUnlocked[i] = 4;
        }
      }
}
