function _goToNextPuzzle() {
	if (!instance_exists(ctrl_puzzles)) {
		exit;
	}
	
	with (ctrl_puzzles) {
		if (currentPuzzleIndex < ds_list_size(puzzles) - 1) {
			nextPuzzleIndex = currentPuzzleIndex + 1;
		} else {
			nextPuzzleIndex = 0;
		}
	}
}