///@desc Set up the main state
global.state = new Connect4State(array_create(42, -1), 0);
readies = array_create(2, false);
readies[global.mpLocalPlayer] = true;
alarm[0] = room_speed;
