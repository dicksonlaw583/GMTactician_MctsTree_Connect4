///@desc Detect connection errors
if (variable_struct_exists(rollback_event_param, "rollback_connect_error")) {
	multiplayer_show_error(
		"Connection error (" + string(rollback_event_param.rollback_connect_error.status) + "):\n" +
		string(rollback_event_param.rollback_connect_error.error)
	);
}
