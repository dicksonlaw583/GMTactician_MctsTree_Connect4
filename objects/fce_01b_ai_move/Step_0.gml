///@desc Wait for a move from the MCTS daemon
if (daemon.ready) {
	// Get and make the move
	var move = real(tree.getBestMove());
	var moveInsertPos = global.state.applyMove(move);
	///Feather disable GM2016
	obj_board_manager.insertPiece(moveInsertPos, currentPlayer);
	///Feather enable GM2016
	// Clean the tree
	delete tree;
	instance_destroy(daemon);
	// Next step
	instance_change(fce_02_check_win, true);
}
