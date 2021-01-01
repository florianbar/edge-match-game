/// @description rotate anti-clockwise
if (ctrl_tiles.activeTile == id 
	&& action == ACTION_TYPES.IDLE 
) {
	action = ACTION_TYPES.ROTATING;
	rotateDir = ROTATION_DIRECTIONS.ANTI_CLOCKWISE;
	endAngle = _getUpdatedAngle(image_angle, 90);
}