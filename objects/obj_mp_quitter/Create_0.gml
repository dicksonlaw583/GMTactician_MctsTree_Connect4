///@desc Define quitting routine
onQuit = function() {
	rollback_leave_game();
	room_goto(rm_menu);
};
