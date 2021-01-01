function _createTiles(grid, tiles, tileSize, gridX, gridY) {
	var tilesController = instance_create_depth(0, 0, 0, ctrl_tiles);
	tilesController.gridRef = grid;
	tilesController.tilesRef = tiles;
	tilesController.tileSize = tileSize;
	tilesController.gridX = gridX;
	tilesController.gridY = gridY;
}