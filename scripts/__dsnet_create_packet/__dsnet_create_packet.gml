///@param msgid
///@description write a DSNET internal message
buffer_seek(send_buffer, buffer_seek_start, 0);
buffer_write(send_buffer, buffer_u8, 0); // To tell DSNET its an internal message
buffer_write(send_buffer, __obj_dsnet_container.custom_id_buffer_type, real(argument0));

return send_buffer;