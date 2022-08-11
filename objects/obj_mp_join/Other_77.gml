///@desc Start the game when connected
global.mpLocalPlayer = rollback_event_param.player_id;
global.mpOtherPlayer = 1-rollback_event_param.player_id;
global.playerIsRemote = array_create(2, true);
global.playerIsRemote[global.mpLocalPlayer] = false;
for (var i = 0; i < 2; ++i) {
	var rollbackInfo = rollback_get_info(i);
	show_debug_message("Rollback player " + string(i) + " info: " + json_stringify(rollbackInfo));
	global.playerName[i] = rollbackInfo.player_name;
	global.playerAvatar[i] = rollbackInfo.player_avatar_sprite;
}
room_goto(rm_mp_game);
