///@desc Setup

// Game state
state = Connect4State(array_create(42, -1), choose(0, 1));
boardInsts = array_create(42, noone);

// Insert a piece
insertPiece = function(_pos, _player) {
	var posX = _pos mod 7;
	var posY = _pos div 7;
	audio_play_sound(snd_insert, 1, false);
	with (instance_create_layer(x+cellWidth*posX, y+cellHeight*posY, layer, obj_piece)) {
		cx = posX;
		cy = posY;
		setPlayer(_player);
		other.boardInsts[_pos] = id;
	}
};

// Clear board
clear = function() {
	for (var i = 0; i < 42; ++i) {
		if (instance_exists(boardInsts[i])) {
			boardInsts[i].drop();
		}
		boardInsts[i] = noone;
	}
};

// Convert in-room position to column index
xyToColumn = function(xx, yy) {
	var cy = round((yy-y)/cellHeight);
	if (cy >= 0 && cy <= 5) {
		var cx = round((xx-x)/cellWidth);
		if (cx >= 0 && cx <= 6) {
			return cx;
		}
	}
	return undefined;
};
