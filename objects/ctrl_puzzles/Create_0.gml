instance_create_depth(0, 0, -1000, o_reloadButton);

currentPuzzleIndex = -1;
nextPuzzleIndex = 0;

reloadCurrentPuzzle = false;

puzzles = ds_list_create();
ds_list_add(puzzles, o_puzzle_1);
ds_list_add(puzzles, o_puzzle_2);
ds_list_add(puzzles, o_puzzle_3);
ds_list_add(puzzles, o_puzzle_4);
ds_list_add(puzzles, o_puzzle_5);
ds_list_add(puzzles, o_puzzle_6);