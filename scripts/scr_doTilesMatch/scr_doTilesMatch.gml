/**
 * Check for side match between 2 cards
 * @param tileA {instance} selected tile
 * @param tileB {instance} tile to match with
 * @return {boolean} if cards match
 */
function scr_doTilesMatch(tileA, tileB) {
	if (tileA.rotations == abs(tileB.rotations - 2)) {
		return true;
	}
	return false;
}