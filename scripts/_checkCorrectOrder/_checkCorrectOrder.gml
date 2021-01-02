function _checkCorrectOrder(grid, tiles) {
	for (var _y = 0; _y < ds_grid_height(grid); _y++) {
		for (var _x = 0; _x < ds_grid_width(grid); _x++) {
			var tileId = ds_grid_get(grid, _x, _y);
			
			if (tileId != 0) {
				var currentTile = tiles[? tileId][? "instanceId"];
			
				// Check match with top tile
				if (_y != 0) {
					var topTileId = ds_grid_get(grid, _x, _y-1);
					if (topTileId != 0) {
						var topTile = tiles[? topTileId][? "instanceId"];
						if (!_checkTileMatch(currentTile, topTile, "top")) {
							return false;
						}
					}
				}
			
				// Check match with right tile
				if (_x != ds_grid_width(grid)-1) {
					var rightTileId = ds_grid_get(grid, _x+1, _y);
					if (rightTileId != 0) {
						var rightTile = tiles[? rightTileId][? "instanceId"];
						if (!_checkTileMatch(currentTile, rightTile, "right")) {
							return false;
						}
					}
				}
			
				// Check match with bottom tile
				if (_y < ds_grid_height(grid)-1) {
					var bottomTileId = ds_grid_get(grid, _x, _y+1);
					if (bottomTileId != 0) {
						var bottomTile = tiles[? bottomTileId][? "instanceId"];
						if (!_checkTileMatch(currentTile, bottomTile, "bottom")) {
							return false;
						}
					}
				}
			
				// Check match with left tile
				if (_x != 0) {
					var leftTileId = ds_grid_get(grid, _x-1, _y);
					if (leftTileId != 0) {
						var leftTile = tiles[? leftTileId][? "instanceId"];
						if (!_checkTileMatch(currentTile, leftTile, "left")) {
							return false;
						}
					}
				}
			}
		}
	}
	
	return true;
}