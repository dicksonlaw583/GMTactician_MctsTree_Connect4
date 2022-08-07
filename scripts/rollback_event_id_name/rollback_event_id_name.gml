///@func rollback_event_id_name(v)
///@arg v
///@return {String}
function rollback_event_id_name(v) {
	switch (v) {
		case rollback_chat_message: return "rollback_chat_message";
		case rollback_connected_to_peer: return "rollback_connected_to_peer";
		case rollback_synchronizing_with_peer: return "rollback_synchronizing_with_peer";
		case rollback_synchronized_with_peer: return "rollback_synchronized_with_peer";
		case rollback_disconnected_from_peer: return "rollback_disconnected_from_peer";
		case rollback_game_interrupted: return "rollback_game_interrupted";
		case rollback_game_resumed: return "rollback_game_resumed";
		case rollback_game_full: return "rollback_game_full";
		case rollback_game_info: return "rollback_game_info";
		case rollback_connect_info: return "rollback_connect_info";
	}
	return "???";
}
