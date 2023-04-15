///@desc connect4_test_read_memo()
///@desc Test Connect 4 memo restoration.
function connect4_test_read_memo() {
	var state, memo, expectedState;
	
	// Read memo
	memo = [
		+1, -1, +1, +1, +1, +0, +1,
		+0, -1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0,
		1
	];
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1
	], 0);
	expectedState = new Connect4State([
		+1, -1, +1, +1, +1, +0, +1,
		+0, -1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0
	], 1);
	state.readMemo(memo);
	assert_equal(state, expectedState, "Read memo failed!");
}
