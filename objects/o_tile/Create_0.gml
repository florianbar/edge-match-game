tileId = 0;
sides = [];

initialDepth = -1000;
depth = initialDepth;

ACTION_TYPES = {
	IDLE: "IDLE",
	ROTATING: "ROTATING",
	CHANGING_POSITION: "CHANGING_POSITION",
};
action = ACTION_TYPES.IDLE;

moveSpeed = 5;
endX = undefined;
endY = undefined;

rotateSpeed = 7;
ROTATION_DIRECTIONS = {
	CLOCKWISE: -1,
	ANTI_CLOCKWISE: 1
};
rotateDir = 0;
endAngle = undefined;