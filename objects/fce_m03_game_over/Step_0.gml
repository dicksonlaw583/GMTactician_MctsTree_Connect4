///@desc Wait for a click anywhere on the board to reset
if (mouse_check_button_released(mb_left) && alarm[0] < 0 && !is_undefined(obj_board_manager.xyToColumn(mouse_x, mouse_y))) {
	if (!readies[global.mpLocalPlayer]) {
		readies[global.mpLocalPlayer] = true;
		event_perform(ev_alarm, 1);
		if (!readies[global.mpOtherPlayer]) {
			textHint = instance_create_layer(room_width/2, 10, "OverInstances", obj_text, {
				text: "Waiting for your opponent to confirm...",
			});
		}
	}
}
if (readies[0] && readies[1] && alarm[0] < 0) {
	// Reset pieces
	obj_board_manager.clear();
	// Reset players
	with (obj_player_manager) {
		deactivate();
	}
	// Wait a little before restarting
	alarm[0] = room_speed;
}
