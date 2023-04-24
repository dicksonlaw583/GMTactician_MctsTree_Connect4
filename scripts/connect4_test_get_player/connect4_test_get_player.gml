///@func connect4_test_get_player()
///@desc Test Connect 4 turn keeping.
function connect4_test_get_player() {
	var state;
	
	// Yellow to-play
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, +1, -1, -1, -1, +0, -1,
		+1, +0, +0, -1, +1, +1, +0
	], 0);
	assert_equal(state.getCurrentPlayer(), 0, "Yellow to-play returned wrong player!");
	
	// Red to-play
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, +1, -1, -1, -1, +0, -1,
		+1, +0, +0, -1, +1, +1, +0
	], 1);
	assert_equal(state.getCurrentPlayer(), 1, "Red to-play returned wrong player!");
}
