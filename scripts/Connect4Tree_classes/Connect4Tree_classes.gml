///@func Connect4MctsTree(state)
///@param {Struct.Connect4State} state The root state to start at
///@desc Connect 4 MCTS tree
function Connect4MctsTree(state) : MctsTree(state) constructor {
	///@func interpret(pr, player)
	///@param {Array} pr The playout result to interpret
	///@param {Real} player The player to view the playout as
	///@self Struct.Connect4MctsTree
	///@desc Return a score using the given playout result, from the given player's perspective
	static interpret = function(pr, player) {
		return is_undefined(pr) ? 0.5 : lerp(1-pr[0], pr[0], player);
	};
}
