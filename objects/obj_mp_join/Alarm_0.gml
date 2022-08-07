///@desc Join a session
instance_create_depth(0, 0, 0, obj_mp_overlord);
if (rollback_join_game()) {
	ready = true;
} else {
	multiplayer_show_error("Failed to join a game.");
}
