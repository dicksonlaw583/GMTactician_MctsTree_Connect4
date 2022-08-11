onClick = function() {
	global.playerIsAi[0] = false;
	global.playerIsAi[1] = false;
	global.playerName[0] = "Player 1";
	global.playerName[1] = "Player 2";
	global.playerAvatar[0] = -1;
	global.playerAvatar[1] = -1;
	room_fadeto(rm_game);
};
