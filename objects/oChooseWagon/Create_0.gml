
stringindex_ = 0;
global.textindex_ = 0;
global.Text_="";
global.riveracross = irandom_range(400,450);
global.riverdeep = random_range(3.5,6.5);
var _date = get_date();
var _loc = global.location_[global.locationIndex_][locationtype.name];

create_text(global.textindex_,texttype.center, _loc);
create_text(global.textindex_,texttype.center, _date);
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "     You must cross the river in  ");
create_text(global.textindex_,texttype.simple, "     order to continue. The ");
create_text(global.textindex_,texttype.simple, "     river at this point is");
create_text(global.textindex_,texttype.simple, "     currently " + string(global.riveracross) + " feet across:");
create_text(global.textindex_,texttype.simple, "     and " + string(global.riverdeep) + " feet deep in the");
create_text(global.textindex_,texttype.simple, "     middle.");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.center, "Press SPACE BAR to continue");

global.textindex_++;
stringindex_ = 0;
global.stringComp = "12345";

create_text(global.textindex_,texttype.center, _loc);
create_text(global.textindex_,texttype.center, _date);
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "Weather: " + global.weather_);
create_text(global.textindex_,texttype.simple, "River width: " + string(global.riveracross) + "feet");
create_text(global.textindex_,texttype.simple, "River depth: " + string(global.riverdeep) + "feet");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "You may:");
create_text(global.textindex_,texttype.simple, "1. attempt to ford the river");
create_text(global.textindex_,texttype.simple, "2. caulk the wagon and float it across");
create_text(global.textindex_,texttype.simple, "3. take a ferry across");
create_text(global.textindex_,texttype.simple, "4. wait to see if conditions improve");
create_text(global.textindex_,texttype.simple, "5. get more information");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.number, "What is your choice? ");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.center, "");


global.textindex_++;
stringindex_ = 0;

create_text(global.textindex_,texttype.center, _loc);
create_text(global.textindex_,texttype.center, _date);
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "   You camp near the river for a day");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.center, "Press SPACE BAR to continue");


global.textindex_++;
stringindex_ = 0;

create_text(global.textindex_,texttype.center, _loc);
create_text(global.textindex_,texttype.center, "");
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "    To ford a river means to");
create_text(global.textindex_,texttype.simple, "    pull your wagon across a");
create_text(global.textindex_,texttype.simple, "    shallow part of the river.");
create_text(global.textindex_,texttype.simple, "    with the oxen still");
create_text(global.textindex_,texttype.simple, "    attached.");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.center, "Press SPACE BAR to continue");


global.textindex_++;
stringindex_ = 0;

create_text(global.textindex_,texttype.center, _loc);
create_text(global.textindex_,texttype.center, "");
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "    To caulk the wagon means to");
create_text(global.textindex_,texttype.simple, "    seal it so that no water can");
create_text(global.textindex_,texttype.simple, "    get in. The wagon can then");
create_text(global.textindex_,texttype.simple, "    be floated across like a");
create_text(global.textindex_,texttype.simple, "    boat.");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.center, "Press SPACE BAR to continue");

global.textindex_++;
stringindex_ = 0;

create_text(global.textindex_,texttype.center,_loc);
create_text(global.textindex_,texttype.center, "");
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "  ");
create_text(global.textindex_,texttype.simple, " ");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "    To use a ferry means to put");
create_text(global.textindex_,texttype.simple, "    your wagon on top of a flat");
create_text(global.textindex_,texttype.simple, "    boat that belongs to someone");
create_text(global.textindex_,texttype.simple, "    else. The owner of the");
create_text(global.textindex_,texttype.simple, "    ferry will take your wagon");
create_text(global.textindex_,texttype.simple, "    across the river.");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.simple, "");
create_text(global.textindex_,texttype.center, "Press SPACE BAR to continue");


global.textindex_ = 0;
stringindex_ = 0;