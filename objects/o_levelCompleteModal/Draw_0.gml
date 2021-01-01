draw_set_color(c_blue);
draw_rectangle(0, 80, room_width, room_height - 80, false);

draw_set_color(c_white);
draw_set_halign(fa_center);

draw_set_font(font_moveCount);
draw_text(room_width / 2, room_height / 2 - 10, "Well Done!");

draw_set_font(font_12);
draw_text(
	room_width / 2, 
	room_height / 2 + 30, 
	"You completed the level in " + string(global.moveCount) + " " + (global.moveCount > 1 ? "moves": "move") + "."
);