///@desc Setup

// Pick red or yellow and freeze the frame
sprite_index = choose(spr_red, spr_yellow);
image_speed = 0;

// Randomize spinning speed and angle, falling speed, size and transparency
// The spinning is a horizontal flip emulating 3D
theta = xrandom(2*pi);
theta_speed = xrandom_range((pi/2)/room_speed, pi/room_speed);
vspeed = xirandom_range(2, 4);
scale = xrandom_range(0.1, 0.3);
image_xscale = scale*sin(theta);
image_yscale = scale;
image_alpha = xrandom_range(0.1, 0.3);
