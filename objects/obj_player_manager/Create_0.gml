///@desc Setup
statusText = "";
image_speed = 0;
daemon = noone;
active = false;

// Activate this player
activateYourTurn = function() {
	statusText = "Your Move";
	active = true;
};

// Activate this player as thinking
activateThinking = function(_mctsDaemon) {
	statusText = "Thinking...";
	daemon = _mctsDaemon;
	active = true;
};

// Deactivate this player
deactivate = function() {
	statusText = "";
	active = false;
	daemon = noone;
};

// Set outcome
setOutcome = function(outcome) {
	var relativeOutcome = lerp(1-outcome, outcome, player);
	switch (relativeOutcome) {
		case 1: statusText = "WIN"; break;
		case 0: statusText = "LOSE"; break;
		default: statusText = "DRAW";
	}
};
