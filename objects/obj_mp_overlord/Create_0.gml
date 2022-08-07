///@desc Guarantee singleton
if (instance_number(obj_mp_overlord) > 1) {
	instance_destroy();
}
