global.save_file_name = "test_save.sav";

data_entry = "UNKNOWN";

update_rate = 5.0;
update_cooldown = update_rate;

sucessful_loads = 0;

// Function for loading the data
load_data = function()
{	
	// Loads the save data buffer
	var _data_buffer = buffer_load(global.save_file_name);
	
	// Checks if the save data buffer exists
	if(buffer_exists(_data_buffer))
	{	
		// Goes to the start of the buffer
		buffer_seek(_data_buffer, buffer_seek_start, 0);

		// Reads the data buffer
		data_entry = buffer_read(_data_buffer, buffer_string);
		
		// Counter for sucessful loads completed
		sucessful_loads++;
	}
	else
	{
		// Resets the data
		data_entry = "UNKNOWN";
		// Resets the counter
		sucessful_loads = 0;
	}
}

// calls the load function
load_data();