/// @description rotate clockwise
if (ctrl_tiles.activeTile == id 
	&& action == ACTION_TYPES.IDLE 
) {
	action = ACTION_TYPES.ROTATING;
	rotateDir = ROTATION_DIRECTIONS.CLOCKWISE;
	endAngle = _getUpdatedAngle(image_angle, -90);
}