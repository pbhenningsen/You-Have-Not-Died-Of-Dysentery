if stringindex_ > 7 {
	room_goto(rmCShop);	
	audio_stop_all();
} else {
	create_text_popup2(oTextLoc.x,oTextLoc.y,global.Text_[stringindex_][0][textstate.thestring]);
	stringindex_++;
}