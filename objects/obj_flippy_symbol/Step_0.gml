///@desc Animate

// Rotate by one more bit and clamp within 2*pi
theta += theta_speed;
if (theta > 2*pi) {
	theta -= 2*pi;
}
// Update the horizontal scaling
image_xscale = abs(sin(theta));
// Update the colour
sprite_index = (theta <= pi) ? spr_red : spr_yellow;
image_speed = 0;
