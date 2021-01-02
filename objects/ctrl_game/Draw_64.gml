var xOffset = room_width/3;
var yOffset = 40;

draw_set_color(c_white);
draw_set_halign(fa_center);

draw_set_font(font_12);
draw_text(xOffset, yOffset, "moves");
draw_text(xOffset * 2, yOffset, "best");

var lineSpacing = 20;
draw_set_font(font_moveCount);
draw_text(xOffset, yOffset + lineSpacing, ctrl_game.moveCount);
draw_text(xOffset * 2, yOffset + lineSpacing, ctrl_game.bestMoveCount);