// Cancel drag delay
if (dragDelayInit && !canDrag) alarm[0] = -1;
dragDelayInit = false;
canDrag = false;

if (action == ACTION_TYPES.IDLE) {
	if (global.tiles.activeTile == noone) 
	{
		// Set tile as active
		global.tiles.activeTile = id;
	} 
	/*else if (global.tiles.activeTile != id) 
	{
		// Move current tile to active tile position
		action = ACTION_TYPES.CHANGING_POSITION;
		endX = global.tiles.activeTile.endX;
		endY = global.tiles.activeTile.endY;
	
		// Move active tile to current tile position
		var currentTileX = x;
		var currentTileY = y;
		with (global.tiles.activeTile) {
			action = ACTION_TYPES.CHANGING_POSITION;
			endX = currentTileX;
			endY = currentTileY;
		}
	
		// Deactivate active tile
		global.tiles.activeTile = noone;
	}*/
	else 
	{
		// Deactivate tile if active
		global.tiles.activeTile = noone;
	}
}

if (action == ACTION_TYPES.DRAGGING) {
	action = ACTION_TYPES.CHANGING_POSITION;
	//show_debug_message("Initialize ACTION_TYPES.CHANGING_POSITION");
	//global.tiles.activeTile = noone;
}