/// @description check for tile matches

var correctOrder = true;

for (var _y = 0; _y < ds_grid_height(gridRef); _y++) 
{
	for (var _x = 0; _x < ds_grid_width(gridRef); _x++) 
	{
		var tileId = ds_grid_get(gridRef, _x, _y);
			
		if (tileId != 0)
		{
			var currentTile = tilesRef[? tileId][? "instanceId"];
			
			// Check match with top tile
			if (_y != 0) 
			{
				var topTileId = ds_grid_get(gridRef, _x, _y-1);
				if (topTileId != 0) 
				{
					var topTile = tilesRef[? topTileId][? "instanceId"];
					if (!_checkTileMatch(currentTile, topTile, "top")) 
					{
						correctOrder = false;
						break;
					}
				}
			}
			
			// Check match with right tile
			if (_x != ds_grid_width(gridRef)-1) 
			{
				var rightTileId = ds_grid_get(gridRef, _x+1, _y);
				if (rightTileId != 0) 
				{
					var rightTile = tilesRef[? rightTileId][? "instanceId"];
					if (!_checkTileMatch(currentTile, rightTile, "right")) 
					{
						correctOrder = false;
						break;
					}
				}
			}
			
			// Check match with bottom tile
			if (_y < ds_grid_height(gridRef)-1) 
			{
				var bottomTileId = ds_grid_get(gridRef, _x, _y+1);
				if (bottomTileId != 0) 
				{
					var bottomTile = tilesRef[? bottomTileId][? "instanceId"];
					if (!_checkTileMatch(currentTile, bottomTile, "bottom")) 
					{
						correctOrder = false;
						break;
					}
				}
			}
			
			// Check match with left tile
			if (_x != 0) 
			{
				var leftTileId = ds_grid_get(gridRef, _x-1, _y);
				if (leftTileId != 0) 
				{
					var leftTile = tilesRef[? leftTileId][? "instanceId"];
					if (!_checkTileMatch(currentTile, leftTile, "left")) 
					{
						correctOrder = false;
						break;
					}
				}
			}
		}
	}
	
	if (!correctOrder) break;
}

if (correctOrder) {
	activeTile = noone;
}