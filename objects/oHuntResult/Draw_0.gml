draw_self();
draw_set_font(fntRetro);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if global.huntnum > 0 {
	draw_text(135,157,global.huntnum);
}
//if alarm[0] =-1 {
draw_text(room_width/2,414,"Press SPACE BAR to continue");
//}