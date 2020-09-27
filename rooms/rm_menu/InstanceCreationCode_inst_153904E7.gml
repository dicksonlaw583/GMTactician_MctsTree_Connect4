onUpdate = function(v) {
	global.mctsPlayouts = round(v);
};

onRelease = function(v) {
	global.mctsPlayouts = round(v);
	ini_open(working_directory + "settings.ini");
	ini_write_real("config", "mctsPlayouts", global.mctsPlayouts);
	ini_close();
};
