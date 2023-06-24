 
if global.textindex_ >= array_length(global.Text_) -1{
	room_goto(rmTitle);	
} else {
	global.textindex_++;	
}

with oText {
	pageindex_ = global.textindex_;	
}