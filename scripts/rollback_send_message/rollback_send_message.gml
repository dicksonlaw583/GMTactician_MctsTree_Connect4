///@func rollback_send_message(msgid, msg, target)
///@arg {Real} msgid Message ID (1-255)
///@arg {String} msg The message to send
///@arg {Real} target The player to send to
///@desc Send a guaranteed message to the target.
function rollback_send_message(msgid, msg, target) {
	rollback_chat(chr(msgid) + string(msg), target);
}
