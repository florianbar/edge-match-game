if (action == ACTION_TYPES.IDLE) {	
	// Set tile as active on first click
	if (ctr_tiles.activeTile == noone) {
		ctr_tiles.activeTile = id;
	}
	// Unset tile as active on second click 
	else if (ctr_tiles.activeTile == id) {
		ctr_tiles.activeTile = noone;
	}
	
	if (ctr_tiles.activeTile != noone && ctr_tiles.activeTile != id) {
		// Move current tile to active tile position
		action = ACTION_TYPES.CHANGING_POSITION;
		endX = ctr_tiles.activeTile.x;
		endY = ctr_tiles.activeTile.y;
		
		// Move active tile to current tile position
		var currentTileX = x;
		var currentTileY = y;
		with (ctr_tiles.activeTile) {
			action = ACTION_TYPES.CHANGING_POSITION;
			endX = currentTileX;
			endY = currentTileY;
			global.moveCount += 1;
		}
	
		// Deactivate active tile
		ctr_tiles.activeTile = noone;
	}
}