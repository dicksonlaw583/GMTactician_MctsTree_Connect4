///@desc Start the game when connected
global.mpLocalPlayer = rollback_event_param.player_id;
global.mpOtherPlayer = 1-rollback_event_param.player_id;
global.playerIsRemote = array_create(2, true);
global.playerIsRemote[global.mpLocalPlayer] = false;
room_goto(rm_mp_game);
