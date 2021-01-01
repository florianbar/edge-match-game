/// @description Unset active tile 

if (!active) exit;

var clickedTile = instance_position(mouse_x, mouse_y, o_tile);

if (clickedTile == noone) {
	selectedTile = noone;
	exit;
}

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
if (selectedTile != noone && clickedTile != selectedTile) 
{
	selectedTile.endX = clickedTile.x;
	selectedTile.endY = clickedTile.y;
	clickedTile.endX = selectedTile.x;
	clickedTile.endY = selectedTile.y;
		
	tileAChanginPosition = selectedTile;
	tileBChanginPosition = clickedTile;
		
	selectedTile.state = o_tile.STATE_TYPES.CHANGING_POSITION;
	clickedTile.state = o_tile.STATE_TYPES.CHANGING_POSITION;
}