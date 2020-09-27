///@func Connect4MctsTree(state)
///@param {State} state The root state to start at
///@desc Connect 4 MCTS tree
function Connect4MctsTree(_state) : MctsTree(_state) constructor {
	///@func interpret(playoutResult, player)
	///@param {PlayoutResult} playoutResult
	///@param {Player} player
	///@desc Return a score using the given playout result, from the given player's perspective
	static interpret = function(_pr, _player) {
		return is_undefined(_pr) ? 0.5 : lerp(1-_pr[0], _pr[0], _player);
	};
}
