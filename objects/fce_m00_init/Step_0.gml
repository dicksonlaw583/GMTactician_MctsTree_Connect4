// Advance when both players are ready
if (readies[0] && readies[1]) {
	instance_change(global.playerIsRemote[global.state.getCurrentPlayer()] ? fce_m01b_remote_move : fce_m01a_local_move, true);
}
