///@desc Start a tree
///Feather disable all
tree = new Connect4MctsTree(global.state);
///Feather enable all
daemon = tree.evaluateInBackground(0, global.mctsPlayouts);
currentPlayer = global.state.player;

// Set AI turn
with (obj_player_manager) {
	if (player == global.state.player) {
		activateThinking(other.daemon);
		break;
	}
}
