draw_set_valign(fa_top);
draw_set_halign(fa_right);
draw_set_color(c_black);

draw_text (300,288,"Date:");
draw_text (300,307,"Weather:");
draw_text (300,326,"Health:");
draw_text (300,345,"Food:");
draw_text (300,364,"Next landmark:");
draw_text (300,383,"Miles traveled: ");
draw_set_halign(fa_left);
draw_text (320,288,get_date());
draw_text (320,307,global.weather_);
draw_text (320,326,global.health_);
draw_text (320,345,string(global.food) + " pounds");
draw_text (320,364,string(next_distance_) + " miles");
draw_text (320,383,string(global.distance_ ) + " miles");
draw_set_color(c_white);
if !is_travelling   draw_text (120,445,"Press SPACE BAR to continue");


