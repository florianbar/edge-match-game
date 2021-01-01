/**
 * Adds a value to a ds_grid but treats it like rows and columns instead of x and y coordinates
 * @param gridId {ds_grid} the created ds_grid
 * @param yPos {integer} y coordinates of the cell
 * @param xPos {integer} x coordinates of the cell
 * @param value {integer} the value to be added to the cell
 * @return {void}
 */
function _gridAdd(gridId, yPos, xPos, value) {
	ds_grid_add(gridId, xPos, yPos, value);
}