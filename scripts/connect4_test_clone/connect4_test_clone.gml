///@desc connect4_test_clone()
///@desc Test Connect 4 state cloning.
function connect4_test_clone() {
	var state, fixture;
	
	// Clone
	fixture = new Connect4State([
		+1, -1, +1, +1, +1, +0, +1,
		+0, -1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0
	], 0);
	state = fixture.clone();
	assert_equal(state, fixture, "Clone failed!");
	state.board[8] = 0;
	state.player = 1;
	assert_not_equal(state, fixture, "Clone is not independent!");
}
