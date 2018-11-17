///@param dsnet_instance[optional]

var dsnet_instance = id;
if (argument_count >= 1) {
	dsnet_instance = argument[0];
}

if (__obj_dsnet_container.verbose) debug_log("DSNET: SEND PACKET ON " + object_get_name(dsnet_instance.object_index));

if (__obj_dsnet_container.debug) {
	if (dsnet_instance.object_index != __obj_dsnet_connected_client && dsnet_instance.object_index != __obj_dsnet_client) {
		debug_log("DSNET: Cannot call dsnet_send() to " + string(object_get_name(dsnet_instance.object_index) + " - only on __obj_dsnet_connected_client or __obj_dsnet_client"));
		return 0;
	}
}

with (dsnet_instance) {
	if (__obj_dsnet_container.is_html5) {
		dsnet_js_send(socket, buffer_get_address(send_buffer), buffer_tell(send_buffer));
	} else {
		if (websocket) { //If the client is a websocket, we have to add a websocket header to the packet
			__dsnet_send_buffer_to_ws_buffer();
			network_send_raw(socket, ws_buffer, buffer_tell(ws_buffer));
		} else {
			network_send_raw(socket, send_buffer, buffer_tell(send_buffer));
		}
	}
}