curr_delta_time = delta_time * 0.000001;
time_passed += curr_delta_time;
second_timer += curr_delta_time;

step_events++;

if (second_timer > 1)
{
	second_timer = 0;
	last_step_events = step_events;
	step_events = 0;
	last_draw_events = draw_events;
	draw_events = 0;
}