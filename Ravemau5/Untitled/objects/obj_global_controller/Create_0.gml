///Setup keybindings, default vars, load save file

with (other) {
	global.playerChoice = 0;
	
	//Key Bindings
	globalvar kUp, kDown, kLeft, kRight, kJump, kAction;
	kUp = vk_up;
	kDown = vk_down;
	kLeft = vk_left;

	global.upMove = false;
	global.downMove = false;
	global.rightMove = false;
	global.leftMove = false;
	setConstants();

	kRight = vk_right;
	kJump = vk_space;
	kAction = ord("X");

	global.world = 0;
	global.level = 0;

	loadSaveFile();
	global.hp = 0;
	playSong();
}
