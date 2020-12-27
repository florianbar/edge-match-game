/**
 * Get updated real angle (0-359 degrees) by adding both values
 * @param currentAngle {integer} current angle
 * @param amount {integer} amount to be added to current angle
 * @return {integer} updated real angle
 */
function scr_getUpdatedAngle(currentAngle, amount) {	
	if (amount > 0) {
		return (currentAngle + amount) mod 360;
	}
	
	return currentAngle + amount < 0 ? 
		360 + (currentAngle + amount) 
		: currentAngle + amount;
}
