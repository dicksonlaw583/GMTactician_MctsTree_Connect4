///@desc Phases

switch (phase) {
	// Drop in from above
	case OBJ_PIECE.ENTERING:
		progress += rate;
		if (progress >= 1) {
			progress = 1;
			phase = OBJ_PIECE.IDLE;
		}
		y = lerp_bounce(-cellHeight*(cy+1), 0, progress)+ystart;
		image_alpha = progress;
	break;
	// Idle
	case OBJ_PIECE.IDLE:
	break;
	// Flashing (when someone wins)
	case OBJ_PIECE.FLASHING:
		progress += rate;
		if (progress > 1) {
			progress -= 1;
		}
		image_index = (progress > 0.5) ? 1 : 0;
	break;
	// Dropping
	case OBJ_PIECE.DROPPING:
		progress += rate;
		image_alpha = 1-progress;
		if (progress >= 1) {
			instance_destroy();
		}
	break;
}
