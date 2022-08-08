///@desc Tell the other player (repeatedly) that we can replay
rollback_send_message(MSGID.REPLAY, "", global.mpOtherPlayer);
alarm[1] = 5*room_speed;