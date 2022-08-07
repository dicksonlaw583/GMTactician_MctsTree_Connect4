///@desc Handle adverse network conditions
show_debug_message("Rollback EVENT - " + rollback_event_id_name(rollback_event_id) + ": " + string(rollback_event_param));
switch (rollback_event_id) {
	// Normal messages
	case rollback_chat_message:
	case rollback_connected_to_peer:
	case rollback_synchronizing_with_peer:
	case rollback_synchronized_with_peer:
	case rollback_game_interrupted:
	case rollback_game_resumed:
	case rollback_game_info:
	case rollback_connect_info:
	break;
	
	// Adverse conditions
	case rollback_disconnected_from_peer:
		multiplayer_show_error("Your opponent has left the game.");
	break;
	case rollback_game_full:
		multiplayer_show_error("The game you were trying to join is full.");
	break;
	default:
		multiplayer_show_error("Unexpected Rollback error (ID " + string(rollback_event_id) + "): " + string(rollback_event_param));
	break;
}
