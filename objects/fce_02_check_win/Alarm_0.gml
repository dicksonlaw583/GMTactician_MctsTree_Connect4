///@desc Check win
var playoutResult = global.state.getPlayoutResult();
// No win: Pass it back to either player
if (is_undefined(playoutResult)) {
	instance_change(global.playerIsAi[global.state.player] ? fce_01b_ai_move : fce_01a_player_move, true);
}
// Win: Notify and go to waiting state
else {
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
	instance_change(fce_03_game_over, true);
}
