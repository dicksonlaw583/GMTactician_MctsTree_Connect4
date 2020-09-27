///@func connect4_test_is_legal()
function connect4_test_is_legal() {
	var state;
	
	// Test variety of moves
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, +0,
		-1, -1, -1, -1, -1, -1, +0,
		-1, -1, -1, +1, -1, -1, +1,
		-1, -1, -1, +1, -1, -1, +0,
		-1, -1, -1, +0, -1, -1, +1,
		-1, -1, -1, +0, -1, -1, +1
	], 1);
	assert_fail(state.isLegal(-1), "Invalid negative move passed!");
	assert_fail(state.isLegal(7), "Invalid big move passed!");
	assert_fail(state.isLegal(6), "Invalid plugged move passed!");
	for (var i = 0; i <= 5; ++i) {
		assert(state.isLegal(i), "Valid move " + string(i) + " failed!");
	}
}
