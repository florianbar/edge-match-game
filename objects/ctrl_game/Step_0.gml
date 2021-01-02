/// @description Insert description here
// You can write your code in this editor

if (ctrl_game.showLevelCompleteModal) {
	if (!instance_exists(o_levelCompleteModal)) {
		instance_create_depth(0, 0, -10000, o_levelCompleteModal);
	}
} else {
	instance_destroy(o_levelCompleteModal);
}