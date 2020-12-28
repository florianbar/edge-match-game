if (!hasInit) {
	hasInit = true;

	// Place tiles
	for (var row = 0; row < array_height_2d(board); row++) {
		for (var cell = 0; cell < array_length_2d(board, row); cell++) {
			if (board[row][cell] != 0) {
				var x1 = boardXOffset + (cell * cellSize) + (cellSize/2) + (cell * 1);
				var y1 = boardYOffset + (row * cellSize) + (cellSize/2) + (row * 1);		
				var tile = instance_create_depth(x1, y1, -1000, obj_tile);
				tile.sides = board[row][cell];
			}
		}
	}
}
