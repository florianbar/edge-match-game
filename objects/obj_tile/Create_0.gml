initialDepth = -1000;
depth = initialDepth;

ACTION_TYPES = {
	IDLE: "IDLE",
	ROTATING: "ROTATING",
	DRAGGING: "DRAGGING",
	CHANGING_POSITION: "CHANGING_POSITION",
};
action = ACTION_TYPES.IDLE;

moveSpeed = 5;
endX = undefined;
endY = undefined;

rotateSpeed = 8;
ROTATION_DIRECTIONS = {
	CLOCKWISE: -1,
	ANTI_CLOCKWISE: 1
};
rotateDir = 0;
endAngle = undefined;

dragDelayInit = false;
canDrag = false;

// Rotate tile to random angle
image_angle = irandom_range(0, 3) * 90;