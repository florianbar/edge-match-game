// Rotate tile if active
if (ctr_tiles.activeTile == id 
	&& action == ACTION_TYPES.IDLE 
) {
	action = ACTION_TYPES.ROTATING;
	rotateDir = ROTATION_DIRECTIONS.ANTI_CLOCKWISE;
	endAngle = scr_getUpdatedAngle(image_angle, 90);
}