ctrl_game.bestMoveCount = 2;

/* Tutorial:
 * - teach the player that they can rotate a tile to find a match
 */

// Setup grid
grid = ds_grid_create(2,2);
_gridAdd(grid, 0, 0, "tile1");
_gridAdd(grid, 0, 1, "tile2");
_gridAdd(grid, 1, 0, "tile3");
_gridAdd(grid, 1, 1, "tile4");

tileSize = 60;
gridX = (room_width - (ds_grid_width(grid) * tileSize)) / 2;
gridY = (room_height - (ds_grid_height(grid) * tileSize)) / 2;

// Setup individual tiles
tile1 = ds_map_create();
tile1[? "instanceId"] = noone;
tile1[? "sides"] = [[1,3], [1,4], [1,4], [1,3]];

tile2 = ds_map_create();
tile2[? "instanceId"] = noone;
tile2[? "sides"] = [[1,4], [1,4], [1,3], [1,3]];

tile3 = ds_map_create();
tile3[? "instanceId"] = noone;
tile3[? "sides"] = [[1,3], [1,3], [1,4], [1,4]];

tile4 = ds_map_create();
tile4[? "instanceId"] = noone;
tile4[? "sides"] = [[1,3], [1,3], [1,1], [1,1]];


// Combine tiles into one map
tiles = ds_map_create();
tiles[? "tile1"] = tile1;
tiles[? "tile2"] = tile2;
tiles[? "tile3"] = tile3;
tiles[? "tile4"] = tile4;