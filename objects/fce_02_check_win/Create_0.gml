///@desc Wait 1 second for piece to drop completely
alarm[0] = room_speed;

// Deactivate all players
with (obj_player_manager) {
	deactivate();
}
