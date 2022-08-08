///@desc Check for player's clicks
if (mouse_check_button_released(mb_left)) {
	// Check the move
	var clickMove = obj_board_manager.xyToColumn(mouse_x, mouse_y);
	if (global.state.isLegal(clickMove)) {
		// Apply the move
		var clickMoveInsertPos = global.state.applyMove(clickMove);
		obj_board_manager.insertPiece(clickMoveInsertPos, currentPlayer);
		// Deactivate all players
		with (obj_player_manager) {
			deactivate();
		}
		// Tell the other player my move
		rollback_send_message(MSGID.MAKE_MOVE, clickMove, global.mpOtherPlayer);
		// Next step
		instance_change(fce_m02_check_win, true);
	}
}
