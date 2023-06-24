#macro DDAYS 10

enum textstate {
	thestring,
	thetype,
	theanswer,
}

enum texttype {
	simple,
	center,
	question,
	yesno,
	number,
	amount,
}

enum messagetype {
   toilet,
   nextlocation,
   stole,
   berries,
   lost,
   blizzard,
   
}

enum locationtype {
	name,
	distance,
	spriteimage,
	iconimage,
	kind,
	audiosound,
	name2,
	name3,
	name4,
	hunting,
}

enum goodstype {
	food,
	clothing,
	wagonaxles,
	wagontang,
	wagonwheels,
	ammunition,
	oxen,
	player,
	parchment,
	total,
}

function create_location(_index,_name,_distance,_sprite, _icon, _kind, _audio){
	global.location_[_index][locationtype.name]        = _name;
	global.location_[_index][locationtype.distance]    = _distance;		
	global.location_[_index][locationtype.spriteimage] = _sprite;
	global.location_[_index][locationtype.iconimage]   = _icon;
	global.location_[_index][locationtype.kind]		   = _kind;
	global.location_[_index][locationtype.audiosound]  = _audio;
}

function create_sstops(_index,_sprite,_text1,_text2,_text3,_text4,_audio){
	global.tstop_[_index][locationtype.spriteimage] = _sprite;
	global.tstop_[_index][locationtype.name]       = _text1;	
	global.tstop_[_index][locationtype.name2]      = _text2;	
	global.tstop_[_index][locationtype.name3]      = _text3;	
	global.tstop_[_index][locationtype.name4]      = _text4;
	global.tstop_[_index][locationtype.audiosound] = _audio;	
}

function create_hstops(_index,_sprite,_text1,_text2,_text3,_text4,_audio){
	global.hstop_[_index][locationtype.spriteimage] = _sprite;
	global.hstop_[_index][locationtype.name]       = _text1;	
	global.hstop_[_index][locationtype.name2]      = _text2;	
	global.hstop_[_index][locationtype.name3]      = _text3;	
	global.hstop_[_index][locationtype.name4]      = _text4;
	global.hstop_[_index][locationtype.audiosound] = _audio;	
}

function create_rstops(_index,_sprite,_text1,_text2,_text3,_text4,_audio){
	global.rstop_[_index][locationtype.spriteimage] = _sprite;
	global.rstop_[_index][locationtype.name]       = _text1;	
	global.rstop_[_index][locationtype.name2]      = _text2;	
	global.rstop_[_index][locationtype.name3]      = _text3;	
	global.rstop_[_index][locationtype.name4]      = _text4;
	global.rstop_[_index][locationtype.audiosound] = _audio;	
}



function create_text(_index,_type,_string){
	global.Text_[_index][stringindex_][textstate.thestring] = _string;	
	global.Text_[_index][stringindex_++][textstate.thetype] = _type;
}

function create_not(_type,_string){
	global.Notif_[notifIndex_][textstate.thestring] = _string;	
	global.Notif_[notifIndex_++][textstate.thetype] = _type;
}

function create_Notif(_type,_string1="",_string2 = "",_string3 = "", _string4 = ""){
	global.Notif_= "";
	notifIndex_ = 0;
	var _dtype1 = texttype.simple;
	var _dtype2 = texttype.simple;
	var _dtype3 = texttype.simple;
	var _dtype4 = texttype.simple;
	if		_string2 == ""	_dtype1 = _type;
	else if _string3 == ""	_dtype2 = _type;
	else if _string4 == ""	_dtype3 = _type;
	else					_dtype4 = _type;
	if	_string1 != ""  create_not(_dtype1,_string1);
	if	_string2 != ""  create_not(_dtype2,_string2);
	if	_string3 != ""  create_not(_dtype3,_string3);
	if	_string4 != ""  create_not(_dtype4,_string4);
	with instance_create_depth(x,y,0,oNotification){
		answerType_ = _type	
	}
}

function create_popup_question(_type,_string1="",_firstScript,_lastScript){
	script_execute(_firstScript);
	with instance_create_depth(oTextLoc.x,oTextLoc.y,0,oPopupQuestion){
		answerType_ = _type	
		text_ = _string1;
		whatScript_ = _lastScript;
	}
}

function create_popup_message(_y,_message,_startScript,_answerScript){
	script_execute(_startScript);
	with instance_create_depth(100,_y,depth,oPopupMessage){
		text_      = _message;
		whatScript = _answerScript;
	};
}

function pause_travel(){
	with oGame {
		pause_ = true;
		is_travelling = false;	
		if alarm[0] != -1 {
			tmp_alarm_start=alarm[0];
			alarm[0] = -1;
		}
		if alarm[1] != -1 {
			tmp_alarm_stop=alarm[1];
			alarm[1]=-1;
		}
	}
	with oTravelWagon {
		image_index=0;
		image_speed=0;
	}
	with oTravelOxen {
		image_index=0;
		image_speed=0;
	}	
}
	


