// Countdown cooldown
update_cooldown -= delta_time * 0.000001;

// Checks if cooldown has finished
if (update_cooldown <= 0)
{
	// Resets cooldown
	update_cooldown = update_rate;
	
	// Synchronises the save buffer and calls the load funtion after 10 frames
	gxc_file_sync(call_later(10, time_source_units_frames, load_data));
}