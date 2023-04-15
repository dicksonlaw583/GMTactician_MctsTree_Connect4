///@func lerp_bounce(b, c, t)
///@param {real} b Value for when t=0
///@param {real} c Value for when t=1
///@param {real} t Interpolating factor in [0, 1]
///@desc Interpolate with a bouncing effect
function lerp_bounce(b, c, t) {
	if (t < (1/2.75)) {
		return (c-b)*(7.5625*t*t) + b;
	} else if (t < (2/2.75)) {
		t -= 1.5/2.75;
		return (c-b)*(7.5625*t*t + .75) + b;
	} else if (t < (2.5/2.75)) {
		t -= 2.25/2.75;
		return (c-b)*(7.5625*t*t + .9375) + b;
	} else {
		t -= 2.625/2.75;
		return (c-b)*(7.5625*t*t + .984375) + b;
	}
}
