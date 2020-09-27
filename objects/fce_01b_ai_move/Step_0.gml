///@desc Wait for a move from the MCTS daemon
if (daemon.ready) {
	// Get and make the move
	var move = tree.getBestMove();
	var moveInsertPos = global.state.applyMove(move);
	obj_board_manager.insertPiece(moveInsertPos, currentPlayer);
	// Clean the tree
	delete tree;
	instance_destroy(daemon);
	// Next step
	instance_change(fce_02_check_win, true);
}
