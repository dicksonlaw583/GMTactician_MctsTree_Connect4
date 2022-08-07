///@func rollback_listen_message(msgid, source, onGet)
///@arg {Real} msgid Message ID (1-255)
///@arg {Real} source The player to receive from, or -1 from anyone.
///@arg {Function} onGet The action to perform when receipt is successful. Should accept message as argument.
///@desc Listen for a guaranteed message in the Rollback Event.
function rollback_listen_message(msgid, source, onGet) {
	if (rollback_event_id == rollback_chat_message) {
		var messageSource = rollback_event_param.from;
		var messageId = ord(string_char_at(rollback_event_param.message, 1));
		var messageBody = string_delete(rollback_event_param.message, 1, 1);
		if (msgid == messageId && (source < 0 || source == messageSource)) {
			onGet(messageBody);
		}
	}
}
