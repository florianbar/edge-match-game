if (global.tiles.activeTile == id) {
	//draw_set_color(c_white);
	//draw_rectangle(x-34, y-34, x+34, y+34, false);
	draw_sprite_ext(spr_tileSelectedBorder, 0, x, y, 33, 33, image_angle, c_white, 1);
}

draw_self();

if (global.tiles.activeTile && global.tiles.activeTile != id) {
	draw_set_color(c_black);
	draw_set_alpha(0.3);
	draw_rectangle(x-30, y-30, x+30, y+30, false);
	draw_set_alpha(1);
}

/*if (global.tiles.activeTile && global.tiles.activeTile) {
	draw_set_color(c_black);
	draw_set_alpha(0.3);
	draw_rectangle(x-30, y-30, x+30, y+30, false);
	draw_set_alpha(1);
}*/