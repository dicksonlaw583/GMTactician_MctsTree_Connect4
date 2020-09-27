///@func connect4_test_final_get_playout_result()
function connect4_test_final_get_playout_result() {
	var state, expected, got;
	
	// Red win, SW-NE diagonal
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, +1,
		-1, -1, -1, -1, -1, +1, +0,
		-1, -1, -1, -1, +1, +0, +0,
		+1, +1, -1, +1, +0, +0, +0,
	], 0);
	expected = [1, 20, 26, 32, 38];
	got = state.getPlayoutResult();
	assert_equal(got, expected, "Red win (SW-NE diagonal) gives wrong playout result!");
	assert(state.isFinal(), "Red win (SW-NE diagonal) isn't final!");
	
	// Red win, row
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, +1, +1, +1, +1,
		+0, +0, -1, +0, +1, +0, +1,
		+0, +0, -1, +1, +0, +1, +0,
	], 0);
	expected = [1, 24, 25, 26, 27];
	got = state.getPlayoutResult();
	assert_equal(got, expected, "Red win (row) gives wrong playout result!");
	assert(state.isFinal(), "Red win (row) isn't final!");
	
	// Yellow win, column
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, +0, -1, -1, -1,
		-1, -1, -1, +0, -1, -1, -1,
		-1, -1, -1, +0, -1, -1, -1,
		-1, -1, +1, +0, +1, +1, -1
	], 1);
	expected = [0, 17, 24, 31, 38];
	got = state.getPlayoutResult();
	assert_equal(got, expected, "Yellow win (column) gives wrong playout result!");
	assert(state.isFinal(), "Yellow win (column) isn't final!");
	
	// Yellow win, NW-SE diagonal
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, +0, -1, -1, -1, -1,
		-1, -1, +1, +0, -1, -1, -1,
		-1, -1, +1, +1, +0, -1, -1,
		-1, -1, +1, +1, +1, +0, -1,
		-1, -1, +0, +0, +1, +0, +1
	], 1);
	expected = [0, 9, 17, 25, 33];
	got = state.getPlayoutResult();
	assert_equal(got, expected, "Yellow win (NW-SE diagonal) gives wrong playout result!");
	assert(state.isFinal(), "Yellow (NW-SE diagonal) isn't final!");
	
	// Draw
	state = new Connect4State([
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0
	], 1);
	expected = [0.5, undefined, undefined, undefined, undefined];
	got = state.getPlayoutResult();
	assert_equal(got, expected, "Draw gives wrong playout result!");
	assert(state.isFinal(), "Draw isn't final!");
	
	// Non-final state gives undefined
	state = new Connect4State([
		+1, -1, +1, +1, +1, +0, +1,
		+0, -1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0
	], 1);
	expected = undefined;
	got = state.getPlayoutResult();
	assert_equal(got, expected, "Non-final state gives wrong playout result!");
	assert_fail(state.isFinal(), "Non-final state is final!");
}
