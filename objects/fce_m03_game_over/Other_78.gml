///@desc Listen for replay from other player
rollback_listen_message(MSGID.REPLAY, global.mpOtherPlayer, function() {
	readies[global.mpOtherPlayer] = true;
});
