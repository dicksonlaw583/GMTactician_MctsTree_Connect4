///@func multiplayer_show_error(msg)
function multiplayer_show_error(msg) {
	multiplayer_end();
	show_message_async(msg)
	room_goto(rm_menu);
}
