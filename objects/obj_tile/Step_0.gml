switch(action) {
	case ACTION_TYPES.ROTATING:
		var tileAngle = scr_getUpdatedAngle(image_angle, rotateSpeed * rotateDir);
		  
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
		}
		break;
		
	case ACTION_TYPES.DRAGGING:
		//show_debug_message("ACTION_TYPES.DRAGGING");
		depth = initialDepth - 1;
		x = mouse_x;
		y = mouse_y;
		break;
		
	case ACTION_TYPES.CHANGING_POSITION:
		depth = initialDepth - 1;
		
		//show_debug_message("ACTION_TYPES.CHANGING_POSITION");
	
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
		if (global.tiles.activeTile == id) {
			depth = initialDepth - 1;
	
			if (global.board.activeCell.x != undefined
				and global.board.activeCell.y != undefined
			){
				action = ACTION_TYPES.CHANGING_POSITION;
			}
		} 
		
		if (global.tiles.activeTile 
			&& global.tiles.activeTile != id
		) {
			depth = initialDepth;
		}
		
		break;
}

