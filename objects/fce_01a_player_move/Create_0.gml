///@desc Set player's turn
currentPlayer = global.state.player;
with (obj_player_manager) {
	if (player == global.state.player) {
		activateYourTurn();
		break;
	}
}
