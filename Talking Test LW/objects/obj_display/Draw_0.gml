draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(sprite_width * 0.5, sprite_height * 0.6, string(data_entry) + "\n Next Update in: " + string(update_cooldown) + "\n Loads :" + string(sucessful_loads));