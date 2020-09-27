///@func connect4_test_apply_move()
function connect4_test_apply_move() {
	var state, move, expectedState, insertPos;
	
	// Yellow to play
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, +1, -1, -1, -1, +0, -1,
		+1, +0, +0, -1, +1, +1, +0
	], 0);
	move = 2;
	expectedState = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, +1, +0, -1, -1, +0, -1,
		+1, +0, +0, -1, +1, +1, +0
	], 1);
	insertPos = state.applyMove(move);
	assert_equal(state, expectedState, "Yellow move ended in wrong state!");
	assert_equal(insertPos, 30, "Yellow move inserted in wrong place!");
	
	// Red to play
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1
	], 1);
	move = 4;
	expectedState = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, +1, -1, -1
	], 0);
	insertPos = state.applyMove(move);
	assert_equal(state, expectedState, "Red move ended in wrong state!");
	assert_equal(insertPos, 39, "Red move inserted in wrong place!");
}
