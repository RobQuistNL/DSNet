ds_map_delete(__obj_dsnet_container.socketHandles, server_socket);
network_destroy(server_socket);
buffer_delete(send_buffer);
ds_map_destroy(clients);