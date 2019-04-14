/// @description Add all the points up
//beetles
beetlesPoints = global.beetles_this_level * 50;
//glowrings
glowPoints = global.glow_rings_this_level * 100;
//time

newPoints = beetlesPoints + glowPoints;
global.points += newPoints
global.glowRings += global.glow_rings_this_level;
global.beetlesKilled += global.beetles_this_level;

