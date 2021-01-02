draw_set_color(c_dkgray);
draw_rectangle(0, 100, room_width, room_height - 80, false);

draw_set_color(c_white);
draw_set_halign(fa_center);

var title = ctrl_game.moveCount == ctrl_game.bestMoveCount ? "Perfect!" : "Good Job!";
draw_set_font(font_moveCount);
draw_text(room_width / 2, room_height / 2 - 10, title);

var message = "You completed the level in " + string(ctrl_game.moveCount) + " " + (ctrl_game.moveCount > 1 ? "moves": "move") + ".";
draw_set_font(font_12);
draw_text(room_width / 2, room_height / 2 + 30, message);

