global.save_file_name = "test_save.sav";
data_entry = "UNKNOWN";
is_active = false;

load_state = function()
{
	// Loads the save data buffer
	var _data_buffer = buffer_load(global.save_file_name);

	// Checks if the save data buffer exists
	if(buffer_exists(_data_buffer))
	{
		// Goes to the start of the buffer
		buffer_seek(_data_buffer, buffer_seek_start, 0);
	
		// Reads the data buffer
		if (buffer_read(_data_buffer, buffer_string) == data_entry)
		{
			// Sets active state
			is_active = true;	
		}
	}
	else
	{
		// Creates the save data buffer
		_data_buffer = buffer_create(16384, buffer_fixed, 2);
	
		// Goes to the start of the save data buffer
		buffer_seek(_data_buffer, buffer_seek_start, 0);
	
		// Writes to the save data buffer
		buffer_write(_data_buffer, buffer_string, data_entry);
	
		// Saves the save data buffer
		buffer_save(_data_buffer, global.save_file_name);
		
		// Sets active state
		is_active = true
	}
}
