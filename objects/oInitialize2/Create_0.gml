for_testing = true;

//Initialzed Variables
global.career_ = "";
global.player_ = "";
create_player(0,"player1",450,100);
create_player(1,"player2",400,75);
create_player(2,"player3",350,50);
create_player(3,"player4",300,25);
create_player(4,"player5",250,10);

global.Text_="";
global.textindex_=0;
global.stringComp="12345";
global.Money_      = 1600;
global.oxen        = 0;
global.food   	   = 0;
global.clothing    = 0;
global.ammunition  = 0;
global.wagonwheels = 0;
global.wagonaxles  = 0;
global.wagontang   = 0;
global.parchment   = 0;
global.wagon_index = 1;
global.riveracross = 648;
global.riverdeep   = 6.2;

global.huntnum = 0;

if for_testing {
	global.oxen        = 1;
	global.food   	   = 1200;
	global.clothing    = 80;
	global.ammunition  = 200;
	global.wagonwheels = 5;
	global.wagonaxles  = 5;
	global.wagontang   = 5;
	global.parchment   = 50;
}

randomize();
global.year_      = irandom_range(122,127);
global.DateTime_  = date_create_datetime( 1970, 3, 1,  0,0,0);

global.health_ = "good";
global.weather_= "cold";
global.pace_   = "steady";
global.ration_ = "filling"; 

global.brokendays = 0;
global.targetRoom = noone;
global.hasSounds = true;

global.distance_ = 0;
global.locationIndex_ = 0;

// toilet stops
global.toilettime = 2;
global.stopsctr   = -1;
room_goto_next();