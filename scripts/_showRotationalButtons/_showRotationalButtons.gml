function _showRotationalButtons(show) {
	if (show) {
		if (!instance_exists(o_rotateRightButton) && !instance_exists(o_rotateLeftButton)) {
			var rotateRightButton = instance_create_depth(0, 0, -1000, o_rotateRightButton);
			rotateRightButton.x = (room_width/2) + 3;
			rotateRightButton.y = room_height - rotateRightButton.sprite_height - 20;
		
			var rotateLeftButton = instance_create_depth(0, 0, -1000, o_rotateLeftButton);
			rotateLeftButton.x = (room_width/2) - rotateLeftButton.sprite_width - 3;
			rotateLeftButton.y = room_height - rotateLeftButton.sprite_height - 20;
		}
	} else {
		if (instance_exists(o_rotateRightButton) && instance_exists(o_rotateLeftButton)) {
			instance_destroy(o_rotateRightButton);
			instance_destroy(o_rotateLeftButton);
		}
	}
}