switch (wallpaper_config.perf.Speed)
{
	case "Blazing":
		game_set_speed(60, gamespeed_fps);
		break;

	case "Normal":
		game_set_speed(30, gamespeed_fps);
		break;

	case "Low":
		game_set_speed(20, gamespeed_fps);
		break;

	default:
		break;
}

switch (wallpaper_config.perf.Resolution)
{
	case "Crisp":
		render_scale = 1.0;
		break;

	case "Normal":
		render_scale = 0.5
		break;

	case "Blurry":
		render_scale = 0.25;
		break;

	default:
		break;
}
