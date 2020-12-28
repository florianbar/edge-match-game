function scr_initTiles(board, cellSize, boardXOffset, boardYOffset) {
	var tilesController = instance_create_depth(0, 0, 0, ctr_tiles);
	tilesController.board = board;
	tilesController.cellSize = cellSize;
	tilesController.boardXOffset = boardXOffset;
	tilesController.boardYOffset = boardYOffset;
}