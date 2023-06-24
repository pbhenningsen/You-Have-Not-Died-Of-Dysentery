	
	
function Input_Text(_text_var){
	if keyboard_check_pressed(vk_enter) return "";
	
	var key_left  = keyboard_check_pressed(vk_left);
	var key_right = keyboard_check_pressed(vk_right);
	var key_any   = keyboard_check(vk_anykey);
	
	if       key_left    cursorPos_--;	
	else if  key_right   cursorPos_++;
	else if  key_any  and (string_length(_text_var) < 20){
		var __string = string(keyboard_string);	
		if __string != "" {
			_text_var = string_insert(__string,_text_var,cursorPos_+1);
			cursorPos_++;
		}
		keyboard_string = "";
	}
	if keyboard_check_pressed(vk_delete){
		_text_var = string_delete(_text_var,cursorPos_+1,1);
		delete_timer_ = 6;
		keyboard_string = "";
	}

	if (delete_timer_ != 0){
		delete_timer_ --;	
	}
	
	cursorPos_ = clamp(cursorPos_,0,string_length(_text_var));
	
	return _text_var;
}


function Input_Amount(_text_var){
	if keyboard_check_pressed(vk_enter) return "";
	if keyboard_check_pressed(vk_space) return "";
	

	var key_left  = keyboard_check_pressed(vk_left);
	var key_right = keyboard_check_pressed(vk_right);
	var key_any   = keyboard_check(vk_anykey);
	
	if       key_left    cursorPos_--;	
	else if  key_right   cursorPos_++;
	else if  key_any  and (string_length(_text_var) < 20){
		var _str = string(keyboard_string);
		if hasChar(_str,"1234567890"){
			_text_var = string_insert(_str,_text_var,cursorPos_+1);
			 cursorPos_++;
		}
		keyboard_string = "";
	}

	
	if keyboard_check_pressed(vk_delete){
		_text_var = string_delete(_text_var,cursorPos_+1,1);
		delete_timer_ = 6;
		keyboard_string = "";
	}
	
	//if keyboard_check_pressed(vk_backspace){
	//	_text_var = string_delete(_text_var,cursorPos_,1)	;
	//	cursorPos_--;
	//	delete_timer_ = 6;
	//	keyboard_string = "";
	//}

	if (delete_timer_ != 0){
		delete_timer_ --;	
	}
	
	cursorPos_ = clamp(cursorPos_,0,string_length(_text_var));
	
	return _text_var;
}





function create_text_layer(_y=100,_message="",_layer="WindowLayer"){
	with instance_create_layer(100,_y,_layer,oMessage){
		text_ = _message;
	};		
}

function create_text_popup(_x=100,_y=100,_message=""){
	with instance_create_depth(_x,_y,-100,oTextPopup){
		text_ = _message;
		//alarm[0] = room_speed * 3;
	};
}

function create_text_popup2(_x=100,_y=100,_message=""){
	with instance_create_depth(_x,_y,-100,oTextPopup){
		text_ = _message;
		//alarm[0] = (string_length(text_) / 10) * room_speed
	};
}


function string_trim(Inputstring,side="both",char=" "){
	var str = string(Inputstring)
	var new_string = str
	if side == "left" or side == "both" {
		var _start = 0
		for(i=1;i <= string_length(new_string);i++){
			if string_char_at(new_string, i) != char {
				_start = i - 1
			break;
			}
		}
		if _start != 0 {
			new_string = string_delete(new_string,1,_start)
		}
	}
	if side == "right" or side == "both"{
		var _end = 0
		for(i=string_length(new_string);i > 0;i--){
			if string_char_at(new_string, i) != char{
				_end = i + 1
				break;
			}
		}
		if _end != 0 {
			new_string = string_delete(new_string,_end,string_length(new_string))
		}
	}
	return new_string	
}
function round_ext(_value){
	return round(_value / .2) * .2;	
}
function clear_string(){
	global.stringComp = "123456789";
	var _amOxen = oxen_ * priceOxen;
	var _amFood = food_ * priceFood;
	var _amCloth = clothing_ * priceCloth;
	var _amAmun = _ammo * priceAmun;
	var _amWagon = (wagonaxles_ + wagontang_ + wagonwheels_) * priceWagon;
	amountcost_ = _amAmun+_amCloth+_amFood+_amOxen+_amWagon;
	global.Money_= primaryMoney_ - amountcost_;
	global.Text_[global.textindex_][12][textstate.thestring]= "You have " + string(global.Money_) + " to spend" ;
	global.Text_[global.textindex_][14][textstate.thetype]= texttype.number;
	global.Text_[global.textindex_][16][textstate.thetype]= texttype.simple;
	global.Text_[global.textindex_][16][textstate.thestring]= "";
}
function set_how_many(_string){
	global.Text_[global.textindex_][14][textstate.thetype] = texttype.simple;
	global.Text_[global.textindex_][16][textstate.thetype] = texttype.amount;
	global.Text_[global.textindex_][16][textstate.thestring]= _string;	
}
function hasChar(splitBy, WhatString){
	for (var i = 0; i <= string_length(WhatString); ++i) {
	    var currStr = string_copy(WhatString, i, 1);
	    if (currStr == splitBy) {
			return true;    
		}
	}
	return false;
}
function search_goods(_itemarray,_string){
	var test_ = true;
	for (var i = 0; i < array_length(_itemarray)-1; ++i) {
	    if string_count(_string,_itemarray[i]) > 0 {
			test_ = false;	
		}
	}
	return test_;
 }
function search_player_alive(){
	for (var j =  array_length(global.player_)-1; j >= 0; --j) {
	    if !global.player_[j][playertype.faint] {
			return j;	
		}
	}
	return -1;
}

function toilet_question(){
	var _toilettext = choose(
	"Man alive. It feels like it's pouring out of you. Pull over and relieve yourself? [y/n]",
	"Your haunches have started caterwauling. Pull over and relieve yourself? [y/n]",
	"You got a real bee in your bowels. Pull over and relieve yourself? [y/n]",
	"Ah fimble-famble, you're about to unleash a floorer. Pull over and relieve yourself? [y/n]",
	"Grab a muckender, you're about to birth a sow. Pull over and relieve yourself? [y/n]",
	"Gurgle, gurgle. Oh mama, you really gotta go. Pull over and relieve yourself? [y/n]",
	"Were your bowels manufactured by Samuel Colt? Cause they're about to blow! Pull over and relieve yourself?  [y/n]",
	"You're minting wooden nickels! Pull over and relieve yourself?  [y/n]",
	"Uh-oh, the laudanum is wearing off! Pull over and relieve yourself?  [y/n]",
	"You're about to pave 10 miles of dirt road. Pull over and relieve yourself?  [y/n]",
	"Somethin's a rumblin' down below. Pull over and relieve yourself? [y/n]",
	"Hot dang, the creek is rising! Pull over and relieve yourself? [y/n]",
	"Looks like you got a wobblin' jaw down there. Pull over and relieve yourself?  [y/n]",
	"Your bowels are raring for daylight. Pull over and relieve yourself?  [y/n]",
	"Friend, you are full of beans. Pull over and relieve yourself?  [y/n]",
	"Bellows to mend, it's time for an earth bath! Pull over and relieve yourself?  [y/n]",
	"Your bowels are madder than a wet hen. Pull over and relieve yourself?  [y/n]",
	"Feels like you're making moonshine down there. Pull over and relieve yourself?  [y/n]",
	"Sounds like you're getting ready to deliver another nose-ender. Pull over and relieve yourself? [y/n]",
	"It's time to acknowledge the corn. That's not a figure of speech. Pull over and relieve yourself? [y/n]",
	"Your bowels are feeling long in the tooth. Pull over and relieve yourself?  [y/n]",
	"There's some real yahooism going on down south. Pull over and relieve yourself?  [y/n]",
	"It's passing through you faster than green grass through a goose. Pull over and relieve yourself? [y/n]",
	"Feels like a bunch of ducks having a fit down there. Pull over and relieve yourself?  [y/n]",
	"Your haunches can't take much more. Pull over and relieve yourself?  [y/n]",
	"Your 10 gallon hat is in danger of overflowing. Pull over and relieve yourself? [y/n]",
	"You better get a wiggle on. Pull over and relieve yourself?  [y/n]",
	"There's some real thunderation happening down there. Pull over and relieve yourself?  [y/n]",
	"You're uncorkin' a bronc. Pull over and relieve yourself?  [y/n]"
	);
	create_popup_question(texttype.yesno, _toilettext ,pause_travel,scr_final_answer)
	}
