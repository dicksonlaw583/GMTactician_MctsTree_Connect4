///@desc Setup
statusText = "";
image_speed = 0;
daemon = noone;
active = false;
label = global.playerName[player];

///@func activateYourTurn()
///@desc Activate this player.
activateYourTurn = function() {
	statusText = "Your Move";
	active = true;
};

///@func activateThinking(mctsDaemon)
///@param {Id.Instance} mctsDaemon The MCTS evaluate daemon's instance ID
///@desc Activate this player as thinking using the MCTS Daemon.
activateThinking = function(mctsDaemon) {
	statusText = "Thinking...";
	daemon = mctsDaemon;
	active = true;
};

///@func deactivate()
///@desc Deactivate this player.
deactivate = function() {
	statusText = "";
	active = false;
	daemon = noone;
};

///@func setOutcome(outcome)
///@param {Real} outcome The reward value of the game state for the current player
///@desc Set the outcome description of this player.
///
///1 = win
///
///0 = loss
///
///Any other = draw
setOutcome = function(outcome) {
	var relativeOutcome = lerp(1-outcome, outcome, real(player));
	switch (relativeOutcome) {
		case 1: statusText = "WIN"; break;
		case 0: statusText = "LOSE"; break;
		default: statusText = "DRAW";
	}
};
