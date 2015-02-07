ini_open("ravemow5_save.ini"); 
// Write the new value
ini_write_real("score","glowrings", global.glowRings); 
ini_write_real("score","beetlesKilled", global.beetlesKilled);
ini_write_real("score","points", global.points);
ini_close();
