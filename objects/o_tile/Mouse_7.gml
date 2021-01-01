if (action == ACTION_TYPES.IDLE) {	
	// Set tile as active on first click
	if (ctrl_tiles.activeTile == noone) {
		ctrl_tiles.activeTile = id;
	}
	// Unset tile as active on second click 
	else if (ctrl_tiles.activeTile == id) {
		ctrl_tiles.activeTile = noone;
	}
	
	if (ctrl_tiles.activeTile != noone && ctrl_tiles.activeTile != id) {
		var currentTileX = x;
		var currentTileY = y;
	
		// Move current tile to active tile position
		action = ACTION_TYPES.CHANGING_POSITION;
		endX = ctrl_tiles.activeTile.x;
		endY = ctrl_tiles.activeTile.y;
		
		// Change tile position in grid
		_swapTilePositionsOnGrid(ctrl_tiles.gridRef, tileId, ctrl_tiles.activeTile.tileId);
		
		// Move active tile to current tile position
		with (ctrl_tiles.activeTile) {
			action = ACTION_TYPES.CHANGING_POSITION;
			endX = currentTileX;
			endY = currentTileY;
			global.moveCount += 1;
		}
	
		// Deactivate active tile
		ctrl_tiles.activeTile = noone;
	}
}