///@desc Receive ready pong
rollback_listen_message(MSGID.READY, global.mpOtherPlayer, function(msg) {
	readies[global.mpOtherPlayer] = true;
	if (global.mpLocalPlayer != 0) {
		global.state = new Connect4State(array_create(42, -1), real(msg));
	}
});
