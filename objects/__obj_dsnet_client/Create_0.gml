server = false;

send_buffer = buffer_create(1500, buffer_fixed, 1);
clients = ds_map_create();

port = undefined;
maxplayers = undefined;
network_timeout = undefined;

func_disconnect = undefined;
func_data = undefined;

server_socket = undefined;

connected = false;

parent = noone;