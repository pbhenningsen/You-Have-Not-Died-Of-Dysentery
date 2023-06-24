
stringindex_ = 0;
global.textindex_ = 0;
global.Text_="";
global.stringComp = "1234";
create_text(global.textindex_,texttype.center, "Change pace");
create_text(global.textindex_,texttype.center, "(currently " + global.pace_ + ")" );
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " The pace at which you travel");
create_text(global.textindex_,texttype.simple, " can change. Your choices are:");
create_text(global.textindex_,texttype.simple, "   1. a steady pace");
create_text(global.textindex_,texttype.simple, "   2. a strenuous pace");
create_text(global.textindex_,texttype.simple, "   3. a grueling pace");
create_text(global.textindex_,texttype.simple, "   4. find out what these");
create_text(global.textindex_,texttype.simple, "      different paces mean");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.number, " What is your choice? ");