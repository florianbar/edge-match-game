switch(action) {
	case ACTION_TYPES.ROTATING:
		var tileAngle = _getUpdatedAngle(image_angle, rotateSpeed * rotateDir);
		  
		if (
			(rotateDir == ROTATION_DIRECTIONS.ANTI_CLOCKWISE && tileAngle <= endAngle)
			|| (rotateDir == ROTATION_DIRECTIONS.ANTI_CLOCKWISE && image_angle > endAngle && 360 mod tileAngle > rotateSpeed)
			|| (rotateDir == ROTATION_DIRECTIONS.CLOCKWISE && abs(tileAngle - endAngle) > rotateSpeed)
		) {
			image_angle = tileAngle;
		} 
		else {
			image_angle = endAngle;
			action = ACTION_TYPES.IDLE;
			global.moveCount += 1;
			
			if (rotateDir == ROTATION_DIRECTIONS.CLOCKWISE) {
				sides = [sides[3], sides[0], sides[1], sides[2]];
			} else {
				sides = [sides[1], sides[2], sides[3], sides[0]];
			}
			
			image_angle = 0;
		}
		break;
		
	case ACTION_TYPES.CHANGING_POSITION:
		depth = initialDepth - 1;
		
		var moveDir = point_direction(x, y, endX, endY);
		var hsp = lengthdir_x(moveSpeed, moveDir);
		var vsp = lengthdir_y(moveSpeed, moveDir);
		
		if (point_distance(x+hsp, y, endX, endY) < hsp) {
			x = endX;			
			hsp = 0;
		}
		x += hsp;
		
		if (point_distance(x, y+vsp, endX, endY) < vsp) {
			y = endY;			
			vsp = 0;
		}
		y += vsp;
		
		if (x == endX && y == endY) {
			action = ACTION_TYPES.IDLE;
		}

		break;
		
	default:		
		depth = ctrl_tiles.activeTile == id ? 
			initialDepth - 1 
			: initialDepth;
		
		break;
}
