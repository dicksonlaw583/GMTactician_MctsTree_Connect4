///@func multiplayer_end()
function multiplayer_end(){
	rollback_leave_game();
	with (obj_mp_overlord) instance_destroy();
}