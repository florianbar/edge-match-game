/**
 * Get instance of tile in specified grid location
 * @param rowIndex {integer} grid row number
 * @param cellIndex {integer} grid cell number
 * @param cellSize {integer} grid cell size
 * @return {instance} instance of tile or noone
 */
function scr_getTileFromGrid(rowIndex, cellIndex, cellSize) {
	var posX = x + (cellIndex * cellSize) + cellSize/2;
	var posY = y + (rowIndex * cellSize) + cellSize/2;
	var tile = instance_nearest(posX, posY, obj_tile);
	
	if (instance_exists(tile) 
		&& tile.x == posX 
		&& tile.y == posY
	) {
		return tile;
	}
	return noone;
}