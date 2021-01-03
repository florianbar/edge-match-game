with (selectedTile) {
	if (state == STATE_TYPES.IDLE) {
		state = STATE_TYPES.ROTATING;
		rotateDir = ROTATION_DIRECTIONS.ANTI_CLOCKWISE;
		endAngle = _getUpdatedAngle(image_angle, 90);
		ctrl_game.moveCount += 1;
	}
}