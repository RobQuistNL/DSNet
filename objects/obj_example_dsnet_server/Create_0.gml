server = dsnet_server_create(
	8000, 
	10, 
	__example_dsnet_server_onconnect,
	__example_dsnet_server_ondisconnect,
	__example_dsnet_server_ondata
);

if (server == noone) {
	debug_log("[EXAMPLE] [SERVER] Server could not be started!");
	instance_destroy();
}

debug_log("[EXAMPLE] [SERVER] Server started!");

//Hook up custom events to the clients
