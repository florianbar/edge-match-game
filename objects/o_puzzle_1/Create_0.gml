global.bestMoveCount = 1;

/* Tutorial:
 * - show the player that you cannot match 2 blank sides
 * - teach the player how to swap 2 tile positions to find a match
 */

// Setup grid
grid = ds_grid_create(2,1);
_gridAdd(grid, 0, 0, "tile1");
_gridAdd(grid, 0, 1, "tile2");

tileSize = 60;
gridX = (room_width - (ds_grid_width(grid) * tileSize)) / 2;
gridY = (room_height - (ds_grid_height(grid) * tileSize)) / 2;

// Setup individual tiles
tile1 = ds_map_create();
tile1[? "instanceId"] = noone;
tile1[? "sides"] = [[1,3], [0,0], [1,4], [1,1]];

tile2 = ds_map_create();
tile2[? "instanceId"] = noone;
tile2[? "sides"] = [[1,2], [1,1], [1,3], [0,0]];

// Combine tiles into one map
tiles = ds_map_create();
tiles[? "tile1"] = tile1;
tiles[? "tile2"] = tile2;