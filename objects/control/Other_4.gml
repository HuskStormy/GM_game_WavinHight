ini_open("example.ini");
	global.bestscore = ini_read_real("save", "score", 0);
ini_close();