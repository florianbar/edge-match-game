var tileXOffset = 0;
var tileYOffset = 0;

// Draw active border when tile active
if (ctrl_tiles.activeTile == id && action != ACTION_TYPES.CHANGING_POSITION) {
	tileXOffset = -6;
	tileYOffset = -6;
	draw_sprite_ext(spr_tilePixel, 0, x+tileXOffset, y+tileYOffset, 31, 31, image_angle, c_white, 1);
}

// Draw white border when tile moves
if (action == ACTION_TYPES.CHANGING_POSITION) {
	draw_set_color(c_white);
	draw_rectangle(x-31, y-31, x+32, y+31, false);
}

// Draw tile background
draw_sprite_ext(spr_tilePixel, 0, x+tileXOffset, y+tileYOffset, 30, 30, image_angle, c_black, 1);


// Draw tile sides
for (var side = 0; side < array_height_2d(sides); side++) 
{
	// Skip side if ""
	if (sides[side][0] == 0 || sides[side][1] == 0) continue;
	
	var spriteAngle = _getUpdatedAngle(image_angle, -side * 90);
	
	var spriteImage;
	switch(sides[side][0]) 
	{
		case 1:
			spriteImage = spr_tileTriangle;
			break;
	}
	
	var spriteColor;
	switch(sides[side][1]) 
	{
		case 1:
			spriteColor = c_red;
			break;
		case 2:
			spriteColor = c_green;
			break;
		case 3:
			spriteColor = c_blue;
			break;
		case 4:
			spriteColor = c_purple;
			break;
	}
	
	draw_sprite_ext(spriteImage, 0, x + tileXOffset, y + tileYOffset, 1, 1, spriteAngle, spriteColor, 1);
}