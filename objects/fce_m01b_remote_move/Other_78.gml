///@desc Listen for remote move
rollback_listen_message(MSGID.MAKE_MOVE, global.mpOtherPlayer, function(move) {
	var clickMove = real(move);
	// Apply the move
	var clickMoveInsertPos = global.state.applyMove(clickMove);
	obj_board_manager.insertPiece(clickMoveInsertPos, currentPlayer);
	// Deactivate all players
	with (obj_player_manager) {
		deactivate();
	}
	// Next step
	instance_change(fce_m02_check_win, true);
});
