///@desc Setup
statusText = "";
thinkProgress = 0;
image_speed = 0;
boardManager = noone;
daemon = noone;
active = true;

// Activate this player
activateYourTurn = function(_boardManager) {
	boardManager = _boardManager;
	statusText = "Your Move";
	active = true;
};

// Activate this player as thinking
activateThinking = function(_boardManager, _mctsDaemon) {
	boardManager = _boardManager;
	statusText = "Thinking...";
	daemon = _mctsDaemon;
	active = true;
};

// Deactivate this player
deactivate = function() {
	statusText = "";
	active = false;
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
