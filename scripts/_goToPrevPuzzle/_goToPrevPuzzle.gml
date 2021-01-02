function _goToPrevPuzzle() {
	if (!instance_exists(ctrl_puzzles)) {
		exit;
	}
	
	with (ctrl_puzzles) {
		if (currentPuzzleIndex > 0) {
			nextPuzzleIndex = currentPuzzleIndex - 1;
		}
	}
}