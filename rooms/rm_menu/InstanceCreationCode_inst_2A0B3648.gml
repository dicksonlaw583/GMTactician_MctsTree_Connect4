onClick = function() {
	global.playerIsAi[0] = false;
	global.playerIsAi[1] = true;
	global.playerName[0] = "Player";
	global.playerName[1] = "Computer";
	room_fadeto(rm_game);
};
