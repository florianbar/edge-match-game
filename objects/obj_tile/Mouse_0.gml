if (!canDrag) {
	if (!dragDelayInit) {
		dragDelayInit = true;
		endX = x;
		endY = y;
		alarm[0] = room_speed * 0.2;
	}
	return;
}

action = ACTION_TYPES.DRAGGING;
global.tiles.activeTile = id;

/*
if (action == ACTION_TYPES.IDLE) {
	//if (global.tiles.activeTile == noone || global.tiles.activeTile == id) {	
	if (
		global.tiles.activeTile == noone 
		|| global.tiles.activeTile == id
		|| global.tiles.activeTile.action != ACTION_TYPES.DRAGGING
	) {
		endX = x;
		endY = y;
		action = ACTION_TYPES.DRAGGING;
		global.tiles.activeTile = id;
	}
	else {
		endX = global.tiles.activeTile.endX;
		endY = global.tiles.activeTile.endY;
		action = ACTION_TYPES.CHANGING_POSITION;
	}
}
*/