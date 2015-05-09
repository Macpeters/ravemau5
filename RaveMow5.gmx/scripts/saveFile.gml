ini_open("ravemow5_save.ini"); 
// Score
ini_write_real("score","glowrings", global.glowRings); 
ini_write_real("score","beetlesKilled", global.beetlesKilled);
ini_write_real("score","points", global.points);
ini_write_real("score", "worldsUnlocked", global.worldsUnlocked);
ini_write_real("score", "levelsUnlocked", global.levelsUnlocked);
// Settings
ini_write_real("settings", "sfx_on", global.sfx_on);
ini_write_real("settings", "music_on", global.music_on);

//unlocked avatars
for(var i = 0; i < global.NUM_PLAYER_CHOICES; i++){
    num = string(i);
    str = 'playerChoice-' + num; 
    ini_write_real("avatars", str, global.playersUnlocked[i]);
}

ini_close();