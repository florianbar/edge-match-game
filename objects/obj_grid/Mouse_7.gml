if (global.tiles.activeTile) {
	var colIndex = floor((mouse_x - x) / cellSize);
	var rowIndex = floor((mouse_y - y) / cellSize);
	var posX = colIndex * cellSize + x;
	var posY = rowIndex * cellSize + y;
	global.board.activeCell.x = posX;
	global.board.activeCell.y = posY;
}