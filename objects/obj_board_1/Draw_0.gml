/// @description Board grid
for (var row = 0; row < array_height_2d(board); row++) {
	for (var cell = 0; cell < array_length_2d(board, row); cell++) {
		if (board[row][cell] != 0) {
			draw_set_colour(c_white);
		
			var x1 = boardXOffset + (cell * (cellSize - 1)) + (cell * 2);
			var y1 = boardYOffset + (row * (cellSize - 1)) + (row * 2);
			var x2 = boardXOffset + ((cell + 1) * (cellSize - 1)) + (cell * 2);
			var y2 = boardYOffset + ((row + 1) * (cellSize - 1)) + (row * 2);

			draw_rectangle(x1,y1,x2,y2,true);
		}
	}
}