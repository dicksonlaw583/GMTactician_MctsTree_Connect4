///@desc Setup

// Freeze the frame
image_speed = 0;

// Randomize spinning speed and angle, falling speed, size and transparency
// The spinning is a horizontal flip emulating 3D
theta = 0;
theta_speed = pi/room_speed;
image_xscale = abs(sin(theta));
