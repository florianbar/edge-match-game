// Rotate tile if active
if (global.tiles.activeTile == id 
	&& action == ACTION_TYPES.IDLE 
) {
	action = ACTION_TYPES.ROTATING;
	rotateDir = ROTATION_DIRECTIONS.CLOCKWISE;
	endAngle = scr_getUpdatedAngle(image_angle, -90);
}