///@func Connect4State(board, player)
///@param {Piece[42]} board
///@param {Player} player
///@desc A Connect-4 game state for GMTactician
function Connect4State(_board, _player) constructor {
	board = _board;
	player = _player;
	
	#region GMTactician required methods
	///@func readMemo(memo)
	///@param {Memo} memo
	///@desc Restore the state to the given memo. 
	static readMemo = function(memo) {
		array_copy(board, 0, memo, 0, 42);
		player = memo[42];
	};
	
	///@func getMemo()
	///@desc Return a memo from the current state.
	static getMemo = function() {
		var memo = array_create(43);
		array_copy(memo, 0, board, 0, 42);
		memo[42] = player;
		return memo;
	};
	
	///@func clone()
	///@desc Return an exact copy of the current state.
	static clone = function() {
		return new Connect4State(board, player);
	};
	
	///@func isFinal()
	///@desc Return whether the current state represents a finished game.
	static isFinal = function() {
		return !is_undefined(getPlayoutResult());
	};
	
	///@func getMoves()
	///@desc Return an array of moves possible from the current state. Assumes that the game is not already over.
	static getMoves = function() {
		var moves = [];
		var ii = 0;
		for (var i = 0; i < 7; ++i) {
			if (board[i] < 0) {
				moves[ii++] = i;
			}
		}
		return moves;
	};
	
	///@func getCurrentPlayer()
	///@desc Return who is the current player.
	static getCurrentPlayer = function() {
		return player;
	};
	
	///@func isLegal(move)
	///@param {Move} move
	///@desc Return whether the given move is legal for the current state.
	static isLegal = function(move) {
		return move >= 0 && move <= 6 && board[move] < 0;
	};
	
	///@func applyMove(move)
	///@param {Move} move
	///@desc Make the specified move on the current state.
	static applyMove = function(move) {
		// Push as far down as available
		var insertAt = move;
		repeat (5) {
			if (board[insertAt+7] < 0) {
				insertAt += 7;
			}
		}
		// Set the token slot
		board[insertAt] = player;
		// It is now the other player's turn
		player = 1-player;
		// Convenience: Return insertAt (MctsTree won't use it, but obj_board_manager will)
		return insertAt;
	};
	
	///@func getPlayoutResult()
	///@desc Return a playout result describing the current state.
	static getPlayoutResult = function() {
		var rowOffset, offset;
		// Check rows
		for (var row = 5; row >= 0; --row) {
			rowOffset = row*7;
			for (var col = 3; col >= 0; --col) {
				offset = rowOffset+col;
				if (board[offset] == board[offset+1] && board[offset] == board[offset+2] && board[offset] == board[offset+3] && board[offset] >= 0) {
					return [board[offset], offset, offset+1, offset+2, offset+3];
				}
			}
		}
		// Check columns
		for (var row = 2; row >= 0; --row) {
			rowOffset = row*7;
			for (var col = 6; col >= 0; --col) {
				offset = rowOffset+col;
				if (board[offset] == board[offset+7] && board[offset] == board[offset+14] && board[offset] == board[offset+21] && board[offset] >= 0) {
					return [board[offset], offset, offset+7, offset+14, offset+21];
				}
			}
		}
		// Check diagonals
		for (var row = 2; row >= 0; --row) {
			rowOffset = row*7;
			for (var col = 3; col >= 0; --col) {
				offset = rowOffset+col;
				// NW-SE diagonal
				if (board[offset] == board[offset+8] && board[offset] == board[offset+16] && board[offset] == board[offset+24] && board[offset] >= 0) {
					return [board[offset], offset, offset+8, offset+16, offset+24];
				}
				// NE-SW diagonal
				offset += 3;
				if (board[offset] == board[offset+6] && board[offset] == board[offset+12] && board[offset] == board[offset+18] && board[offset] >= 0) {
					return [board[offset], offset, offset+6, offset+12, offset+18];
				}
			}
		}
		// If any of the top slots aren't filled, it's not over yet.
		for (var col = 6; col >= 0; --col) {
			if (board[col] < 0) {
				return undefined;
			}
		}
		// The whole board is filled without a win, tie.
		return [0.5, undefined, undefined, undefined, undefined];
	};
	#endregion
}
