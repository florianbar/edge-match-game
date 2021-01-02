if (!active) exit;

var clickedRotateLeftButton = instance_position(mouse_x, mouse_y, o_rotateLeftButton);
if (clickedRotateLeftButton && selectedTile) {
	with (selectedTile) {
		if (state == STATE_TYPES.IDLE) {
			state = STATE_TYPES.ROTATING;
			rotateDir = ROTATION_DIRECTIONS.ANTI_CLOCKWISE;
			endAngle = _getUpdatedAngle(image_angle, 90);
			ctrl_game.moveCount += 1;
		}
	}
}

var clickedRotateRightButton = instance_position(mouse_x, mouse_y, o_rotateRightButton);
if (clickedRotateRightButton && selectedTile) {
	with (selectedTile) {
		if (state == STATE_TYPES.IDLE) {
			state = STATE_TYPES.ROTATING;
			rotateDir = ROTATION_DIRECTIONS.CLOCKWISE;
			endAngle = _getUpdatedAngle(image_angle, -90);
			ctrl_game.moveCount += 1;
		}
	}
}

if (clickedRotateLeftButton || clickedRotateRightButton) {
	exit;
}

var clickedTile = instance_position(mouse_x, mouse_y, o_tile);
if (clickedTile) {
	if (clickedTile.state == o_tile.STATE_TYPES.IDLE) {	
		// Set tile as active on first click
		if (selectedTile == noone) {
			selectedTile = clickedTile;
		}
		// Unset tile as active on second click 
		else if (selectedTile == clickedTile) {
			selectedTile = noone;
		}
	}

	// Swap tile positions
	if (selectedTile && clickedTile != selectedTile) {
		selectedTile.endX = clickedTile.x;
		selectedTile.endY = clickedTile.y;
		clickedTile.endX = selectedTile.x;
		clickedTile.endY = selectedTile.y;
		
		tileAChanginPosition = selectedTile;
		tileBChanginPosition = clickedTile;
		
		selectedTile.state = o_tile.STATE_TYPES.CHANGING_POSITION;
		clickedTile.state = o_tile.STATE_TYPES.CHANGING_POSITION;
	}
} else {
	selectedTile = noone;
}