
stringindex_ = 0;
global.textindex_ = 0;
global.Text_="";
global.stringComp = "123";
create_text(global.textindex_,texttype.center, "Change food rations");
create_text(global.textindex_,texttype.center, "(currently " + global.ration_ + ")" );
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " The amount of food the people in");
create_text(global.textindex_,texttype.simple, " your Party eat each day can");
create_text(global.textindex_,texttype.simple, " change. These amounts are:");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, " 1. filling - meals are large and");
create_text(global.textindex_,texttype.simple, "    generous.");
create_text(global.textindex_,texttype.simple, " 2. meager - meals are small. but");
create_text(global.textindex_,texttype.simple, "    adequate.");
create_text(global.textindex_,texttype.simple, " 3. bare bones - meals are very");
create_text(global.textindex_,texttype.simple, "    small: everyone stays hungry. ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.number, " What is your choice? ");