///@func relerp(oldmin, oldmax, value, newmin, newmax)
///@param {real} oldmin Old range 0-value
///@param {real} oldmax Old range 1-value
///@param {real} value Value in the old range
///@param {real} newmin New range 0-value
///@param {real} newmax New range 1-value
///@desc Re-interpolate the given value from the old range [oldmin, oldmax] in context of the new range [newmin, newmax]
function relerp(oldmin, oldmax, value, newmin, newmax) {
	return (value-oldmin)/(oldmax-oldmin)*(newmax-newmin)+newmin;
}
