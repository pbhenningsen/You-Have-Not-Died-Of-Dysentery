	if has_beries draw_sprite(sBushes,0, 400,155);
	if has_theif draw_sprite(sThieve,0, 565,155)	;

	if !isstart_travel and is_travelling {
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		draw_set_color(c_black)
		draw_rectangle(-2,250,room_width,280,false);
		draw_set_color(c_white)
		draw_text (45,255,"Press ENTER to size up the situation");	
	}