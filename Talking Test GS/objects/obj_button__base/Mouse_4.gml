// Loops through all button bases
with(obj_button__base)
{
	// Sets active state to false
	is_active = false;	
}

// Sets this buttons active state to true
is_active = true;

// Loads the save data buffer
var _data_buffer = buffer_load(global.save_file_name);

// Checks if the save data buffer exists
if(!buffer_exists(_data_buffer))
{
	// Creates the save data buffer
	_data_buffer = buffer_create(16384, buffer_fixed, 2);
}

// Goes to the start of the save data buffer
buffer_seek(_data_buffer, buffer_seek_start, 0);

// Writes to the save data buffer
buffer_write(_data_buffer, buffer_string, data_entry);

// Saves the save data buffer
buffer_save(_data_buffer, global.save_file_name);