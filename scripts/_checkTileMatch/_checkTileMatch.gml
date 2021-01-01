function _checkTileMatch(tileA, tileB, sideToMatch) {	
	switch(sideToMatch) {
		case "top":
			var tileASide = 0;			
			var tileBSide = 2;
			break;
		case "right":
			var tileASide = 1;			
			var tileBSide = 3;
			break;
		case "bottom":
			var tileASide = 2;			
			var tileBSide = 0;
			break;
		case "left":
			var tileASide = 3;			
			var tileBSide = 1;
			break;
	}
	
	if (tileA.sides[tileASide, 0] == 0 || tileB.sides[tileBSide, 0] == 0) {
		return false;
	}
	
	var typesMatch  = tileA.sides[tileASide, 0] == tileB.sides[tileBSide, 0];
	var colorsMatch = tileA.sides[tileASide, 1] == tileB.sides[tileBSide, 1];

	if (typesMatch && colorsMatch) {
		return true;
	}
	
	return false;
}