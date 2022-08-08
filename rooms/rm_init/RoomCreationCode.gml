// Seed the PRNG
randomize();

// Self-test
connect4_test_all();

// Set up background decor
var times = irandom_range(15, 20);
repeat (times) {
	instance_create_layer(irandom(room_width), irandom(room_height), "BackInstances", obj_background_symbol);
}

// Global variables
ini_open(working_directory + "settings.ini");
global.mctsPlayouts = ini_read_real("config", "mctsPlayouts", 500);
ini_close();
global.playerIsAi = [false, true];
global.playerName = ["Player 1", "Player 2"];

// Multiplayer setup
global.mpLocalPlayer = 0;
global.mpOtherPlayer = 1;
global.playerIsRemote = [false, true];
rollback_display_events(false);

// Boot up
if (rollback_join_game(true)) {
	room_fadeto(rm_mp_joining);
} else {
	room_fadeto(rm_menu);
}
