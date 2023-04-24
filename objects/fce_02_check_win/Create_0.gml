///@desc Wait 1 second for piece to drop completely
alarm[0] = game_get_speed(gamespeed_fps);

// Deactivate all players
with (obj_player_manager) {
	deactivate();
}
