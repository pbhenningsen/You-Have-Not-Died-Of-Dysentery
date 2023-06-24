function get_month_name(_month){
	switch (_month) {
	    case 1:
	        return "January"
	        break;
	    case 2:
	        return "January"
	        break;
	    case 3:
	        return "March"
	        break;
	    case 4:
	        return "April"
	        break;
	    case 5:
	        return "May"
	        break;
	    case 6:
	        return "June"
	        break;
	    case 7:
	        return "July"
	        break;
	    case 8:
	        return "August"
	        break;
	    case 9:
	        return "September"
	        break;
	    case 10:
	        return "October"
	        break;
	    case 11:
	        return "November"
	        break;
	    case 12:
	        return "December"
	        break;
	}
}

function get_date(){
	var _year  = date_get_year(global.DateTime_);
	var _month = date_get_month(global.DateTime_);
	var _day   = date_get_day(global.DateTime_);
	return get_month_name(_month) + " " + string(_day) + ", " + string(_year - global.year_)
}

function add_to_date(){
	global.DateTime_  = date_inc_day(global.DateTime_,1); 
}

function add_player_health(){
	for (var i = 0; i < array_length(global.player_); ++i) {
		global.player_[i][playertype.hp]+=20;
	}	
}

function get_pace(){
	switch (global.pace_) {
	    case "steady":
	        dist_      = 12;
			movespeed_ = 0.1;
	        break;
	    case "strenuous":
	        dist_      = 18;
			movespeed_ = 0.1;
	        break;
	    case "grueling":
	        dist_      = 21;
			movespeed_ = 0.1;
	        break;
	}
}

function get_ration(){
	switch (global.ration_) {
	    case "filling":
	        foodate_   = 9;
	        break;
	    case "meager":
	        foodate_   = 6;
	        break;
	    case "bare bones":
	        foodate_   = 3;
	        break;
	}
}

function start_travel(){
	with oTravelWagon {
		image_speed=1;	
		if global.brokendays <= 0 
			sprite_index = sTravelWagon;
		else 
			sprite_index = sTravelWagonBroke;
	}
	with oTravelOxen  {
		if global.brokendays <= 0 
			image_speed=1;	
		else 
			image_speed=0.3;
	}
	with oGame {
		pause_ = false;
		if alarm[0]==-1 {
			if tmp_alarm_start > 0 {
				alarm[0] = tmp_alarm_start;
				tmp_alarm_start=0;
			} else {
				alarm[0] = room_speed * 1.5;
			}
		}
		is_travelling	= true;
		isstart_travel	= false;
		has_beries		= false;
		has_theif		= false;
	}
	with oPlayerWagon {
		instance_activate_all();	
		alarm[2] = room_speed * 20; 
		is_activated = true;
		ctr_++;
	}
	
	with oGameHunting {
		instance_activate_all();	
		alarm[0] = tmpAlarm0;
		alarm[1] = global.alarm1;
	}
}

function stop_travel(){
	with oTravelWagon {
		image_index=0;
		image_speed=0;
	}
	with oTravelOxen {
		image_index=0;
		image_speed=0;
	}
	add_to_date();
	global.distance_ += (dist_+global.brokendays);
	next_distance_ -=  (dist_+global.brokendays);
	next_distance_ = clamp(next_distance_,0,99999);
	global.food -= foodate_;
	global.food = clamp(global.food,0,99999);
}

function set_next_location(){
	with oGame {
		next_distance_ = global.location_[global.locationIndex_+1][locationtype.distance] - global.location_[global.locationIndex_][locationtype.distance];
		next_location_ = global.location_[global.locationIndex_+1][locationtype.name];
		last_location_ = global.location_[global.locationIndex_][locationtype.name];
		var dist2_ = next_distance_ / dist_; 
		oTravelLocation.x = xstart - (dist2_ * (room_speed * 1.5));
		oTravelLocation.image_index = global.location_[global.locationIndex_+1][locationtype.iconimage];
		var _mess = "From " + last_location_ + " it is " + string(next_distance_) + " miles to " + next_location_ ;
		create_popup_message(oGame.y,_mess,pause_travel,start_travel);
	}
}

enum playertype {
	name,
	hp,
	issick,
	brokenarm,
	faint,
	isHungry,
	hungry,
	max_hungry,
}

function create_player(_index,_name,_hp, _hungry,_isHungry=false, _issick = false,_brokenarm = false, _faint = false){
	global.player_[_index][playertype.name]       = _name;
	global.player_[_index][playertype.hp]         = _hp;		
	global.player_[_index][playertype.issick]     = _issick;
	global.player_[_index][playertype.brokenarm]  = _brokenarm;
	global.player_[_index][playertype.faint]      = _faint;
	global.player_[_index][playertype.hungry]     = _hungry;
	global.player_[_index][playertype.max_hungry] = _hungry;
	global.player_[_index][playertype.isHungry]   = _isHungry;
}

function got_money(_amount){
	if global.Money_ - _amount < 0 {
		return false;
	} 
	return true;
}


function get_quantity(_price) {
	var _qty = (string_trim(oText.answer_)=="" ? "0" : oText.answer_);
	var _amt = real(_qty) * _price;
	if  got_money(_amt){
		return real(_qty);
	} else {
		oText.answer_ = "";
		return 0;
	}
}

function player_move(_dx){
	x_from = x_pos; 
	y_from = y_pos; 
            
	x_to = x_pos + _dx;
	y_to = y_pos + (_dx/2);
            
	x_pos = x_to;
	y_pos = y_to;
	state = playerstate.walking;
}

function create_object(_object) {
	randomize();
	var _offset = 128;
	var _x = irandom_range(_offset,room_width - _offset);
	var _y = irandom_range(_offset,room_height - _offset);
	do {
		_x = irandom_range(_offset,room_width - _offset);
		_y = irandom_range(_offset,room_height - _offset);
	} until (collision_point(_x,_y,oCollision,false,true)==noone)
	var ind_ = instance_create_depth(_x,_y,depth,_object);
	return ind_;
}


function show_location_menu(){
	var _indexKind =  global.location_[global.locationIndex_][locationtype.kind];
	switch (_indexKind) {
	    case locationkind.river:
	        room_goto(rmGameMenuRiver1);
	        break;
	    case locationkind.river2:
	        room_goto(rmGameMenuRiver2);
	        break;
	    case locationkind.river3:
	        room_goto(rmRiverFinal);
	        break;
	    case locationkind.ending:
	        game_restart();
	        break;
	    default:
	        room_goto(rmGameMenuLoc1);
	        break;
	}
}

function show_wagon_menu(){
	var _indexKind =  global.location_[global.locationIndex_][locationtype.kind];
	switch (_indexKind) {
	    case locationkind.river:
	        room_goto(rmRiverCrossingIntro);
	        break;
	    case locationkind.river2:
	        room_goto(rmRiverCrossingIntro2);
	        break;
	    case locationkind.river3:
	        room_goto(rmRiverFinal);
	        break;
	    default:
	        break;
	}
}

function goto_location2(){
	global.stopsctr++;
	if global.stopsctr >=array_length(global.tstop_) {global.stopsctr=0;}
	global.targetRoom = room;
	room_goto(rmLocations2);		
}

function goto_location3(){
	global.hstopsctr++;
	if global.hstopsctr >=array_length(global.hstop_) {global.hstopsctr=0;}
	global.targetRoom = room;
	room_goto(rmLocations3);		
}

function goto_location4(){
	global.rstopsctr++;
	if global.rstopsctr >=array_length(global.rstop_) {global.rstopsctr=0;}
	global.targetRoom = room;
	room_goto(rmLocations4);		
}

function goto_gameover2(){
	room_goto(rmGameOver2);	
}


function play_audio_sound(_audio,_repeat=false){
	if global.hasSounds {
		audio_play_sound(_audio,10,_repeat);
	}
}
