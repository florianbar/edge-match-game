/// @description create puzzle instance
if (currentPuzzleIndex != nextPuzzleIndex 
	&& nextPuzzleIndex < ds_list_size(puzzles)
) {
	// Destroy previous puzzle instance
	if (currentPuzzleIndex > -1 
		&& instance_exists(puzzles[| currentPuzzleIndex])
	) {
		instance_destroy(puzzles[| currentPuzzleIndex]);
		instance_destroy(ctrl_tiles);
	}
	
	// Reset move count
	global.moveCount = 0;
	
	var puzzle = instance_create_depth(x, y, -1, puzzles[| nextPuzzleIndex]);
	with (puzzle) {
		_createTiles(grid, tiles, tileSize, gridX, gridY);
	}
	
	currentPuzzleIndex = nextPuzzleIndex;
}