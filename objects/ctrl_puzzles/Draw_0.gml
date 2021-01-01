/// @description current puzzle's grid lines
if (currentPuzzleIndex > -1 
	&& instance_exists(puzzles[| currentPuzzleIndex])
) {
	var grid	 = puzzles[| currentPuzzleIndex].grid;
	var gridX	 = puzzles[| currentPuzzleIndex].gridX;
	var gridY	 = puzzles[| currentPuzzleIndex].gridY;
	var tileSize = puzzles[| currentPuzzleIndex].tileSize;
	
	draw_set_colour(c_white);

	for (var _y = 0; _y < ds_grid_height(grid); _y++) 
	{
		for (var _x = 0; _x < ds_grid_width(grid); _x++) 
		{
			if (ds_grid_get(grid, _x, _y) != 0) 
			{
				var x1 = gridX + (_x * (tileSize - 1)) + (_x * 2);
				var y1 = gridY + (_y * (tileSize - 1)) + (_y * 2);
				var x2 = gridX + ((_x + 1) * (tileSize - 1)) + (_x * 2);
				var y2 = gridY + ((_y + 1) * (tileSize - 1)) + (_y * 2);

				draw_rectangle(x1, y1, x2, y2, true);
	        }
	    }
	}
}