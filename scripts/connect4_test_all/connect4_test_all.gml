///@func connect4_test_all()
function connect4_test_all() {
	var timeA = current_time;
	
	/* v Tests here v */
	connect4_test_read_memo();
	connect4_test_get_memo();
	connect4_test_clone();
	connect4_test_get_moves();
	connect4_test_get_player();
	connect4_test_is_legal();
	connect4_test_apply_move();
	connect4_test_final_get_playout_result();
	/* ^ Tests here ^ */
	
	var timeB = current_time;
	show_debug_message("Connect 4 tests completed in " + string(timeB-timeA) + "ms.");
}
