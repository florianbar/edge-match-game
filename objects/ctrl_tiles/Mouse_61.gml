/// @description rotate clockwise

if (selectedTile != noone) {
	with (selectedTile) {
		if (state == STATE_TYPES.IDLE) {
			state = STATE_TYPES.ROTATING;
			rotateDir = ROTATION_DIRECTIONS.CLOCKWISE;
			endAngle = _getUpdatedAngle(image_angle, -90);
			global.moveCount += 1;
		}
	}
}