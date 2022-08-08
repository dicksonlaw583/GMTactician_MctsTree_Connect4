///@desc Set up the main state
show_debug_message(object_get_name(object_index));
global.state = new Connect4State(array_create(42, -1), choose(0, 1));
readies = array_create(2, false);
readies[global.mpLocalPlayer] = true;
alarm[0] = room_speed;
