///@desc Start a tree
tree = new Connect4MctsTree(global.state);
daemon = tree.evaluateInBackground(0, global.mctsPlayouts);
currentPlayer = global.state.player;

// Set AI turn
with (obj_player_manager) {
	if (player == global.state.player) {
		activateThinking(obj_board_manager, other.daemon);
		break;
	}
}
