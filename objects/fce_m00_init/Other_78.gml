///@desc Receive ready pong
rollback_listen_message(MSGID.READY, global.mpOtherPlayer, function() {
	readies[global.mpOtherPlayer] = true;
});
