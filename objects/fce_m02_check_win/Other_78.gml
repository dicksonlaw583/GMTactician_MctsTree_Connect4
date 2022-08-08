///@desc Client wait for win confirm from host
if (global.mpLocalPlayer != 0) {
	rollback_listen_message(MSGID.GAME_OVER, 0, function(msg) {
		var playoutResult = json_parse(msg);
		// Set outcome
		with (obj_player_manager) {
			setOutcome(playoutResult[0]);
		}
		// Play appropriate sound
		if (frac(playoutResult[0]) == 0) {
			if (global.playerIsAi[playoutResult[0]]) {
				audio_play_sound(snd_lose, 1, false);
			} else {
				audio_play_sound(snd_win, 1, false);
			}
		}
		// If not tie, highlight the winning pieces
		if (is_real(playoutResult[1])) {
			obj_board_manager.highlightWinners(playoutResult);
		}
		// Next step, go to waiting state
		instance_change(fce_m03_game_over, true);
	});
	rollback_listen_message(MSGID.YOUR_MOVE, 0, function() {
		instance_change(global.playerIsRemote[global.state.getCurrentPlayer()] ? fce_m01b_remote_move : fce_m01a_local_move, true);
	});
}
