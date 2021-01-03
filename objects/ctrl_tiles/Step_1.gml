/// @description initialize tile instances
if (!hasInit) {
	hasInit = true;

	// Place tiles
	for (var _y = 0; _y < ds_grid_height(gridRef); _y++) {
		for (var _x = 0; _x < ds_grid_width(gridRef); _x++) {
			var tileId = ds_grid_get(gridRef, _x, _y);
			
			if (tileId != "") {
				var x1 = gridX + (_x * tileSize) + (tileSize/2) + (_x * 1);
				var y1 = gridY + (_y * tileSize) + (tileSize/2) + (_y * 1);	
				
				var tile = instance_create_depth(x1, y1, -1000, o_tile);
				tile.tileId = tileId;
				tile.sides = tilesRef[? tileId][? "sides"];

				tilesRef[? tileId][? "instanceId"] = tile;
			}
		}
	}
	
	return;
}