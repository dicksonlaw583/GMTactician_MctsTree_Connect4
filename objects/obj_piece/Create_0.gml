///@desc Setup
enum OBJ_PIECE {
	ENTERING,
	IDLE,
	FLASHING,
	DROPPING
}

// Phase
phase = OBJ_PIECE.ENTERING;
progress = 0;
image_alpha = 0;

// Animate flash when winning
flash = function() {
	phase = OBJ_PIECE.FLASHING;
	progress = 0;
};

// Animate drop and destroy
drop = function() {
	phase = OBJ_PIECE.DROPPING;
	progress = 0;
	gravity = 1;
	gravity_direction = 270;
	image_index = 0;
};

// Set the ucrrent player
setPlayer = function(p) {
	player = p;
	sprite_index = p ? spr_red : spr_yellow;
	image_index = 0;
	image_speed = 0;
};
setPlayer(player);
