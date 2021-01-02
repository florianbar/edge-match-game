instance_create_depth(room_width - spr_reloadButton.sprite_width - 30, 10, -1000, o_reloadButton);

currentPuzzleIndex = -1;
nextPuzzleIndex = 0;

reloadCurrentPuzzle = false;

puzzles = ds_list_create();
ds_list_add(puzzles, o_puzzle_1);
ds_list_add(puzzles, o_puzzle_2);
ds_list_add(puzzles, o_puzzle_3);