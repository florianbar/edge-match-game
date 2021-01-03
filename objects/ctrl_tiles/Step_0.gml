if (!active) exit;

if (tileAChanginPosition != noone
	&& tileBChanginPosition != noone
	&& tileAChanginPosition.state == o_tile.STATE_TYPES.IDLE
	&& tileBChanginPosition.state == o_tile.STATE_TYPES.IDLE
) {
	// Change tile position in grid
	_swapTilePositionsOnGrid(gridRef, tileAChanginPosition.tileId, tileBChanginPosition.tileId);
	
	selectedTile = noone;
	tileAChanginPosition = noone;
	tileBChanginPosition = noone;
	
	ctrl_game.moveCount += 1;
}

if (_checkCorrectOrder(gridRef, tilesRef)) {
	active = false;
	selectedTile = noone;
	alarm[0] = room_speed * 0.5;
}

// Show or hide rotational buttons
_showRotationalButtons(selectedTile != noone);