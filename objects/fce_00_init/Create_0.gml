///@desc Set up the main state
global.state = new Connect4State(array_create(42, -1), choose(0, 1));
instance_change(global.playerIsAi[global.state.player] ? fce_01b_ai_move : fce_01a_player_move, true);
