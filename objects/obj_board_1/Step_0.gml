var correctOrder = true;

for (var row = 0; row < array_height_2d(board); row++) {
	for (var cell = 0; cell < array_length_2d(board, row); cell++) {
		if (board[row][cell] == 1) {
			var currentTile = scr_getTileFromGrid(row, cell, cellSize);
			
			if (!instance_exists(currentTile)) {
				correctOrder = false;
				break;
			}
			
			// Check match with top tile
			if (row > 0) {
				var tileTop = scr_getTileFromGrid(row-1, cell, cellSize);
				
				if (instance_exists(tileTop) 
					&& !scr_doTilesMatch(currentTile, tileTop)
				) {
					correctOrder = false;
					break;
				}
			}
			
			// Check match with right tile
			if (cell < array_length_2d(board, row)-1) {
				var tileRight = scr_getTileFromGrid(row, cell+1, cellSize);
				
				if (instance_exists(tileRight) 
					&& !scr_doTilesMatch(currentTile, tileRight)
				) {
					correctOrder = false;
					break;
				}
			}
			
			// Check match with bottom tile
			if (row < array_height_2d(board)-1) {
				var tileBottom = scr_getTileFromGrid(row+1, cell, cellSize);	
				
				if (instance_exists(tileBottom) 
					&& !scr_doTilesMatch(currentTile, tileBottom)
				) {
					correctOrder = false;
					break;
				}
			}
			
			// Check match with left tile
			if (cell > 0) {
				var tileLeft = scr_getTileFromGrid(row, cell-1, cellSize);
				
				if (instance_exists(tileLeft) 
					&& !scr_doTilesMatch(currentTile, tileLeft)
				) {
					correctOrder = false;
					break;
				}
			}
		}
	}
	
	if (!correctOrder) break;
}

if (correctOrder) {
	show_message("All tiles are matching");
}