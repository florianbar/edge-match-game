depth = -1;

// Row 1
board[0][0] = [[0,0], [1,1], [1,2], [1,3]];
board[0][1] = [[1,0], [1,1], [0,2], [1,3]];
// Row 2
board[1][0] = [[1,0], [1,1], [1,2], [1,3]];
board[1][1] = 0;

cellSize = 60;
boardXOffset = (room_width - (array_length_2d(board, 0) * cellSize)) / 2;
boardYOffset = (room_height - (array_height_2d(board) * cellSize)) / 2;

scr_initTiles(board, cellSize, boardXOffset, boardYOffset);