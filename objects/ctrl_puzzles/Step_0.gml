/// @description create puzzle instance
if (currentPuzzleIndex != nextPuzzleIndex 
	&& nextPuzzleIndex < ds_list_size(puzzles)
) {
	// Destroy previous puzzle instance
	if (currentPuzzleIndex > -1 
		&& instance_exists(puzzles[| currentPuzzleIndex])
	) {
		instance_destroy(puzzles[| currentPuzzleIndex]);
	}
	
	// Craete current puzzle instance
	instance_create_depth(x, y, -1, puzzles[| nextPuzzleIndex]);
	currentPuzzleIndex = nextPuzzleIndex;
}