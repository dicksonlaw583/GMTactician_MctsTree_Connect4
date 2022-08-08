///@desc Host checks win
if (global.mpLocalPlayer == 0) {
	var playoutResult = global.state.getPlayoutResult();
	// No win: Pass it back to either player
	if (is_undefined(playoutResult)) {
		rollback_send_message(MSGID.YOUR_MOVE, global.state.getCurrentPlayer(), global.mpOtherPlayer);
		instance_change(global.playerIsRemote[global.state.getCurrentPlayer()] ? fce_m01b_remote_move : fce_m01a_local_move, true);
	}
	// Win: Notify and go to waiting state
	else {
		rollback_send_message(MSGID.GAME_OVER, json_stringify(playoutResult), global.mpOtherPlayer);
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
		if (!is_undefined(playoutResult[1])) {
			obj_board_manager.highlightWinners(playoutResult);
		}
		// Next step, go to waiting state
		instance_change(fce_m03_game_over, true);
	}
}
