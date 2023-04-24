///@func connect4_test_get_moves()
///@desc Test Connect 4 move enumeration.
function connect4_test_get_moves() {
	var state, expectedMoves, gotMoves;
	
	// All moves for opening board
	state = new Connect4State([
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1,
		-1, -1, -1, -1, -1, -1, -1
	], 1);
	expectedMoves = [0, 1, 2, 3, 4, 5, 6];
	gotMoves = state.getMoves();
	assert_equal(gotMoves, expectedMoves, "Wrong moves for opening board!");
	
	// Plugged columns
	state = new Connect4State([
		+1, -1, -1, -1, +0, -1, -1,
		+1, -1, -1, -1, +1, -1, -1,
		+1, -1, -1, -1, +0, -1, -1,
		+0, -1, -1, -1, +1, -1, -1,
		+0, -1, -1, -1, +0, -1, -1,
		+0, -1, -1, -1, +1, -1, -1
	], 0);
	expectedMoves = [1, 2, 3, 5, 6];
	gotMoves = state.getMoves();
	assert_equal(gotMoves, expectedMoves, "Wrong moves for plugged columns!");
	
	// Almost full
	state = new Connect4State([
		1, -1, 1, 1, 1, -1, 1,
		0, -1, 0, 0, 0, -1, 0,
		1, 0, 1, 1, 1, 0, 1,
		0, 1, 0, 0, 0, 1, 0,
		1, 0, 1, 1, 1, 0, 1,
		0, 1, 0, 0, 0, 1, 0
	], 1);
	expectedMoves = [1, 5];
	gotMoves = state.getMoves();
	assert_equal(gotMoves, expectedMoves, "Wrong moves for almost full!");
}
