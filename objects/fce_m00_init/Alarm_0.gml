///@desc Send a chat message saying I'm ready, with identity of first player if host
rollback_send_message(MSGID.READY, (global.mpLocalPlayer == 0) ? global.state.getCurrentPlayer() : "", global.mpOtherPlayer);
alarm[0] = room_speed;
