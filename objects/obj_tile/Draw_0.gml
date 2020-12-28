// Draw active border when tile active
if (ctr_tiles.activeTile == id && action != ACTION_TYPES.CHANGING_POSITION) {
	draw_sprite_ext(spr_tilePixel, 0, x, y, 34, 34, image_angle, c_white, 1);
}

// Draw white border when tile moves
if (action == ACTION_TYPES.CHANGING_POSITION) {
	draw_set_color(c_white);
	draw_rectangle(x-31, y-31, x+32, y+31, false);
}

// Draw tile background
draw_sprite_ext(spr_tilePixel, 0, x, y, 30, 30, image_angle, c_black, 1);

// Draw tile sides
//draw_sprite_ext(spr_tileTriangle, 0, x, y, 1, 1, image_angle, c_red, 1);
for (var side = 0; side < array_height_2d(sides); side++) {
	// Skip side if 0
	if (sides[side][0] == 0) {
		continue;
	}
	
	var spriteImage;
	var spriteColor;
	var spriteAngle = scr_getUpdatedAngle(image_angle, -side * 90);
	
	switch(sides[side][0]) {
		case 1:
			spriteImage = spr_tileTriangle;
			break;
	}
		
	switch(sides[side][1]) {
		case 3:
			spriteColor = c_green;
			break;
		case 2:
			spriteColor = c_blue;
			break;
		case 1:
			spriteColor = c_lime;
			break;
		default:
			spriteColor = c_aqua;
			break;
	}
		
	draw_sprite_ext(spriteImage, 0, x, y, 1, 1, spriteAngle, spriteColor, 1);
}

// Darken tile if not active
if (ctr_tiles.activeTile && ctr_tiles.activeTile != id) {
	draw_set_color(c_black);
	draw_set_alpha(0.3);
	draw_rectangle(x-30, y-30, x+30, y+30, false);
	draw_set_alpha(1);
}