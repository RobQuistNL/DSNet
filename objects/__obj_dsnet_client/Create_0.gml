server = false;
websocket = false;
send_buffer = buffer_create(__obj_dsnet_container.packetsize, buffer_fixed, 1);
clients = ds_map_create();

port = undefined;
maxplayers = undefined;
network_timeout = undefined;

func_disconnect = undefined;
func_data = undefined;

socket = undefined;

connected = false;

parent = noone;

messageTimeout = 0;

ping = 0;

subclient = undefined;