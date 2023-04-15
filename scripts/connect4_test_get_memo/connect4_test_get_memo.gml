///@desc connect4_test_get_memo()
///@desc Test Connect 4 memo fetching.
function connect4_test_get_memo() {
	var state, memo, expectedMemo;
	
	// Get memo
	expectedMemo = [
		+1, -1, +1, +1, +1, +0, +1,
		+0, -1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0,
		0
	];
	state = new Connect4State([
		+1, -1, +1, +1, +1, +0, +1,
		+0, -1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0,
		+1, +0, +1, +1, +1, +0, +1,
		+0, +1, +0, +0, +0, +1, +0
	], 0);
	memo = state.getMemo();
	assert_equal(memo, expectedMemo, "Get memo failed!");
}
