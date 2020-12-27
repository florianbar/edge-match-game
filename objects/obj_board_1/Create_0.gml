depth = -1;

// Row 1
board[0][0] = 1;
board[0][1] = 1;
// Row 2
board[1][0] = 0;
board[1][1] = 1;

cellSize = 60;
boardXOffset = (room_width - (array_length_2d(board, 0) * cellSize)) / 2;
boardYOffset = (room_height - (array_height_2d(board) * cellSize)) / 2;

// Place tiles
for (var row = 0; row < array_height_2d(board); row++) {
	for (var cell = 0; cell < array_length_2d(board, row); cell++) {
		if (board[row][cell] == 1) {
			var x1 = boardXOffset + (cell * cellSize) + (cellSize/2) + (cell * 1);
			var y1 = boardYOffset + (row * cellSize) + (cellSize/2) + (row * 1);
			instance_create_depth(x1, y1, -1000, obj_tile);
		}
	}
}