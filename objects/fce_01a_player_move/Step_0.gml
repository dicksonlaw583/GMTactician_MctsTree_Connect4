///@desc Check for player's clicks
if (mouse_check_button_released(mb_left)) {
	// Check the move
	var clickMove = obj_board_manager.xyToColumn(mouse_x, mouse_y);
	if (global.state.isLegal(clickMove)) {
		// Apply the move
		var clickMoveInsertPos = global.state.applyMove(clickMove);
		obj_board_manager.insertPiece(clickMoveInsertPos, currentPlayer);
		// Next step
		instance_change(fce_02_check_win, true);
	}
}
