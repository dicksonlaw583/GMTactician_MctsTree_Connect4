///@func multiplayer_end()
function multiplayer_end(){
	rollback_leave_game();
	with (obj_mp_overlord) instance_destroy();
	with (obj_mp_send) instance_destroy();
	with (obj_mp_receive) instance_destroy();
}