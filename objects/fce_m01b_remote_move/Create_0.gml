///@desc Set player's turn
show_debug_message(object_get_name(object_index));
currentPlayer = global.state.player;
with (obj_player_manager) {
	if (player == global.state.player) {
		activateThinking();
		break;
	}
}
