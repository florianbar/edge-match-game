function _swapTilePositionsOnGrid(gridRef, currentTileId, selectedTileId) 
{
	for (var _y = 0; _y < ds_grid_height(gridRef); _y++) 
	{
		for (var _x = 0; _x < ds_grid_width(gridRef); _x++) 
		{
			var tileId = ds_grid_get(gridRef, _x, _y);
			
			if (tileId == currentTileId) 
			{
				ds_grid_set(gridRef, _x, _y, selectedTileId);
			} 
			else if (tileId == selectedTileId) 
			{
				ds_grid_set(gridRef, _x, _y, currentTileId);
			}
		}
	}
}