/// @description rotate anti-clockwise

if (selectedTile != noone) {
	with (selectedTile) {
		if (state == STATE_TYPES.IDLE) {
			state = STATE_TYPES.ROTATING;
			rotateDir = ROTATION_DIRECTIONS.ANTI_CLOCKWISE;
			endAngle = _getUpdatedAngle(image_angle, 90);
			global.moveCount += 1;
		}
	}
}