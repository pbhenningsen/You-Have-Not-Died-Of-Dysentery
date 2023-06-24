function answerNextLocation(finalAnswer){
	with oGame {
		var  _ans = string_upper(finalAnswer);
		switch (_ans) {
		    case "Y":
		        room_goto(rmLocations);
			    isstart_travel = true;
				global.distance_+=next_distance_;
				next_distance_=0;	
				set_next_location();
				break;
		    case "N":
				show_wagon_menu();
				global.distance_+=next_distance_;
				next_distance_=0;
				set_next_location();
		        break;
		}
	}
}


function toilet_answer_YN(finalAnswer){
	var  _ans = string_upper(finalAnswer);//this just forces the string to contain capital letters...but does it? IS THIS JUST IN CASE I ENTER CAPITAL LETTERS?
	switch (_ans) {
		case "Y":
			if global.parchment <= 0 {
				global.toilettime--;
				if global.toilettime <=0 { 
					create_popup_message(oTextLoc.y, "Maybe next time, you'll buy enough toilet parchment.",no_script, goto_gameover2);
				} else {
					var _failtext = "Unfortunately, you don't have any toilet parchment. You get creative with some beaver pelts and a passing tumbleweed, but next time you won't be so resourceful."
					create_popup_message(oTextLoc.y, _failtext,pause_travel, start_travel);
				}
			} else {
				global.toilettime = 2;
				goto_location2();
				start_travel();
			}
			break;
		case "N":
			global.toilettime--;
			if global.toilettime <=0 { 		
				create_popup_message(oTextLoc.y, "That wasn't so wise. ",no_script, goto_gameover2);
			} else {
				var _failtext = choose(
					"Well...all right. Can't say we recommend that. Your diet is mostly cornmeal.",
					"Well...all right. It's your trousers' funeral.",
					"Well...all right. Some folks like to live on the edge.",
					"Well...all right. Continence isn't for everyone.",
					"Well...all right. Nature calls, but some folks don't listen.",
					"Well...all right. There's a lesson here that's about to be learned.",
					"Well...all right. But that's a mean fate to tempt.",
					"Well...all right. It's only your dignity at stake.",
					"Well...all right. But that horse is about to buck.",
					"Well...all right. But there's some bulls you shouldn't try to ride.",
					"Well...all right. Some people like to make a mess.",
				);
				create_popup_message(oTextLoc.y, _failtext,pause_travel, start_travel);
			}
		    break;
		default:
		    exit;
		    break;
	}	
}

function toilet_answer_YN1(finalAnswer){
	var  _ans = string_upper(finalAnswer);//this just forces the string to contain capital letters...but does it? IS THIS JUST IN CASE I ENTER CAPITAL LETTERS?
	switch (_ans) {
		case "Y":
			if global.parchment <= 0 {
				global.toilettime--;
				if global.toilettime <=0 { 
					create_popup_message(oTextLoc.y, "Maybe next time, you'll buy enough toilet parchment.",no_script, goto_gameover2);
				} else {
					var _failtext = "Unfortunately, you don't have any toilet parchment. You get creative with some beaver pelts and a passing tumbleweed, but next time you won't be so resourceful."
					create_popup_message(oTextLoc.y, _failtext,pause_travel, start_travel);
				}
			} else {
				global.toilettime = 2;
				goto_location3();
				start_travel();
			}
			break;
		case "N":
			global.toilettime--;
			if global.toilettime <=0 { 		
				create_popup_message(oTextLoc.y, "That wasn't so wise. ",no_script, goto_gameover2);
			} else {
				var _failtext = choose(
					"Well...all right. Can't say we recommend that. Your diet is mostly cornmeal.",
					"Well...all right. It's your trousers' funeral.",
					"Well...all right. Some folks like to live on the edge.",
					"Well...all right. Continence isn't for everyone.",
					"Well...all right. Nature calls, but some folks don't listen.",
					"Well...all right. There's a lesson here that's about to be learned.",
					"Well...all right. But that's a mean fate to tempt.",
					"Well...all right. It's only your dignity at stake.",
					"Well...all right. But that horse is about to buck.",
					"Well...all right. But there's some bulls you shouldn't try to ride.",
					"Well...all right. Some people like to make a mess."
				);
				create_popup_message(oTextLoc.y, _failtext,pause_travel, start_travel);
			}
		    break;
		default:
		    exit;
		    break;
	}	
}

function toilet_answer_YN2(finalAnswer){
	var  _ans = string_upper(finalAnswer);//this just forces the string to contain capital letters...but does it? IS THIS JUST IN CASE I ENTER CAPITAL LETTERS?
	switch (_ans) {
		case "Y":
			if global.parchment <= 0 {
				global.toilettime--;
				if global.toilettime <=0 { 
					create_popup_message(oTextLoc.y, "Maybe next time, you'll buy enough toilet parchment.",no_script, goto_gameover2);
				} else {
					var _failtext = "Unfortunately, you don't have any toilet parchment. You get creative with some beaver pelts and a passing tumbleweed, but next time you won't be so resourceful."
					create_popup_message(oTextLoc.y, _failtext,pause_travel, start_travel);
				}
			} else {
				global.toilettime = 2;
				goto_location4();
				start_travel();
			}
			break;
		case "N":
			global.toilettime--;
			if global.toilettime <=0 { 		
				create_popup_message(oTextLoc.y, "That wasn't so wise. ",no_script, goto_gameover2);
			} else {
				var _failtext = choose(
					"Well...all right. Can't say we recommend that. Your diet is mostly cornmeal.",
					"Well...all right. It's your trousers' funeral.",
					"Well...all right. Some folks like to live on the edge.",
					"Well...all right. Continence isn't for everyone.",
					"Well...all right. Nature calls, but only some listen.",
					"Well...all right. But there's a lesson here that's about to be learned.",
					"Well...all right. But that's a mean fate to tempt.",
					"Well...all right. It's only your dignity at stake.",
					"Well...all right. But there's some bulls you don't want to ride.",
					"Well...all right. Some people like to make a mess.",
				);
				create_popup_message(oTextLoc.y, _failtext,pause_travel, start_travel);
			}
		    break;
		default:
		    exit;
		    break;
	}	
}

function create_berries_message(){
	global.Notif_= ""
	notifIndex_ = 0;
	global.food += 30;
	with oGame has_beries = true;
	pause_travel();
}

function create_stole_message(){
	play_audio_sound(sndBang);
	var swiftGoods = [""];
	var swiftnum = 1;	 
	for (var i = 0; i < swiftnum; ++i) {
		var ctr_ = 10;
		do {
			var whatgoods = irandom(goodstype.total);  
			switch (whatgoods) {
			    case goodstype.oxen:
					if search_goods(swiftGoods,"ox") {
						var goodsremove = irandom_range(1,2);
						if global.oxen >  goodsremove {
							swiftGoods[i]=string(goodsremove) +  " ox";
							global.oxen-=goodsremove;
						}
					}
			        break;
			    case goodstype.food:
					if search_goods(swiftGoods,"food") {
						var goodsremove = irandom_range(10,100);
						if global.food >  goodsremove {
							swiftGoods[i]=string(goodsremove) +  " food";
							global.food-=goodsremove;
						}
					}
			        break;
			    case goodstype.clothing:
					if global.clothing > 2 and search_goods(swiftGoods,"clothing"){
						var goodsremove = round(global.clothing * random_range(0.1,0.3));
						swiftGoods[i]=string(goodsremove) +  " sets of clothing";
						global.clothing-=goodsremove;
					}
			        break;
			    case goodstype.ammunition:
					var goodsremove = irandom_range(20,100);
					if global.ammunition > goodsremove and search_goods(swiftGoods,"bullets"){
						swiftGoods[i]=string(goodsremove) +  " bullets";
						global.ammunition-=goodsremove;
					}
			        break;
			    case goodstype.wagonwheels:
					var goodsremove = 1;
					if global.wagonwheels > goodsremove and search_goods(swiftGoods,"wheel") {
						swiftGoods[i]=string(goodsremove) +  " wagon wheel";
						global.wagonwheels-=goodsremove;
					}
			        break;
			    case goodstype.wagonaxles:
					var goodsremove = 1;
					if global.wagonaxles > goodsremove and search_goods(swiftGoods,"axles") {
						swiftGoods[i]=string(goodsremove) +  " wagon axles";
						global.wagonaxles-=goodsremove;
					}
			        break;
			    case goodstype.wagontang:
					var goodsremove = 1;
					if global.wagontang > goodsremove and search_goods(swiftGoods,"tongue") {
						swiftGoods[i]=string(goodsremove) +  " wagon tongue";
						global.wagontang-=goodsremove;
					}
			        break;
			    case goodstype.parchment:
					var goodsremove =irandom_range(1,4);
					if global.parchment > goodsremove and search_goods(swiftGoods,"parchment") {
						swiftGoods[i]=string(goodsremove) +  " parchment";
						global.parchment-=goodsremove;
					}
			        break;
			}
			ctr_--;
		} until (swiftGoods[i]!="" or ctr_ < 0);
	}
	with oGame   has_theif = true;
	create_popup_message(oGame.y,"The thief stole: " + swiftGoods[0], pause_travel,start_travel);		
}


function fail_items(){
	play_audio_sound(sndHit1);
	var swiftGoods = ["","","",""];
	var swiftnum = irandom_range(1,3);	 
	for (var i = 0; i < swiftnum; ++i) {
		var ctr_ = 10;
		do {
			var whatgoods = irandom(goodstype.total);  
			switch (whatgoods) {
			    case goodstype.oxen:
					if search_goods(swiftGoods,"ox") {
						var goodsremove = irandom_range(10,100);
						if global.oxen >  goodsremove {
							swiftGoods[i]=string(goodsremove) +  " ox";
							global.oxen-=goodsremove;
						}
					}
			        break;
			    case goodstype.food:
					if search_goods(swiftGoods,"food") {
						var goodsremove = irandom_range(10,100);
						if global.food >  goodsremove {
							swiftGoods[i]=string(goodsremove) +  " food";
							global.food-=goodsremove;
						}
					}
			        break;
			    case goodstype.clothing:
					if global.clothing > 2 and search_goods(swiftGoods,"clothing"){
						var goodsremove = round(global.clothing * random_range(0.1,0.3));
						swiftGoods[i]=string(goodsremove) +  " sets of clothing";
						global.clothing-=goodsremove;
					}
			        break;
			    case goodstype.ammunition:
					var goodsremove = irandom_range(20,100);
					if global.ammunition > goodsremove and search_goods(swiftGoods,"bullets"){
						swiftGoods[i]=string(goodsremove) +  " bullets";
						global.ammunition-=goodsremove;
					}
			        break;
			    case goodstype.wagonwheels:
					var goodsremove = 1;
					if global.wagonwheels > goodsremove and search_goods(swiftGoods,"wheel") {
						swiftGoods[i]=string(goodsremove) +  " wagon wheel";
						global.wagonwheels-=goodsremove;
					}
			        break;
			    case goodstype.wagonaxles:
					var goodsremove = 1;
					if global.wagonaxles > goodsremove and search_goods(swiftGoods,"axles") {
						swiftGoods[i]=string(goodsremove) +  " wagon axles";
						global.wagonaxles-=goodsremove;
					}
			        break;
			    case goodstype.wagontang:
					var goodsremove = 1;
					if global.wagontang > goodsremove and search_goods(swiftGoods,"tongue") {
						swiftGoods[i]=string(goodsremove) +  " wagon tongue";
						global.wagontang-=goodsremove;
					}
			        break;
			    case goodstype.player:
					var player__ = search_player_alive();
					if irandom(3) == 0 and player__ != -1{
						swiftGoods[i]= global.player_[player__][playertype.name] +  " (drowned)";
						global.player_[player__][playertype.faint]=true;
					}
			        break;
			    case goodstype.parchment:
					var goodsremove =irandom_range(1,4);
					if global.parchment > goodsremove and search_goods(swiftGoods,"parchment") {
						swiftGoods[i]=string(goodsremove) +  " parchment";
						global.parchment-=goodsremove;
					}
			        break;
			}
			ctr_--;
		} until (swiftGoods[i]!="" or ctr_ < 0);
	}
	
	return 	" " + swiftGoods[0]  + chr(13) +
			" " + swiftGoods[1]  + chr(13) +
			" " + swiftGoods[2]  + chr(13) +
			" " + swiftGoods[3]  + chr(13) ;
}



function create_broke_message(){
	play_audio_sound(sndBang);
	var swiftGoods = "";
	var whatgoods = irandom(2);  
	switch (whatgoods) {
		case 0:
			swiftGoods="wheel";
			global.wagonwheels--;
			if global.wagonwheels <= 0  {
				global.brokendays = DDAYS
			}
			break;
		case 1:
			swiftGoods="axles";
			global.wagonaxles--;
			if global.wagonaxles <= 0  {
				global.brokendays = DDAYS
			}
			break;
		case 2:		
			swiftGoods = "tongue";
			global.wagontang--;
			if global.wagontang <= 0  {
				global.brokendays = DDAYS
			}
			break;
	}
	
	if global.brokendays>0 {
		create_popup_message(oGame.y,"Broken wagon " + swiftGoods +". You don't have extra to repair it.", pause_travel,start_travel);
	} else {
		create_popup_message(oGame.y,"Broken wagon " + swiftGoods +" and it was repaired immediately.", pause_travel,start_travel);
	}			
}

function create_lost_message(_string){
	var dayslost = irandom_range(2,5);
	var _text = _string + ". Lost " + string(dayslost) + " days.";
	create_popup_message(oGame.y,_text, lost_first_script,lost_after_script);
	with oGame days_ = dayslost;
	with oPopupMessage instant_destroy = false;
}

function lost_first_script(){
	pause_travel();
}

function lost_after_script(){
	with oGame  alarm[2] = room_speed;
}

function final_river_deactivate(){
	is_activated = false;
	instance_deactivate_object(oArrowChild);
	instance_deactivate_object(oRockchild);
	instance_deactivate_object(oTrail);
	instance_deactivate_object(oTrailChild);
	instance_deactivate_object(oRocks);
}

function hunting_deactivate(){
	is_activated = false;
	instance_deactivate_object(oAnimals);
	//instance_deactivate_object(oHuntPlayer);
	tmpAlarm0     = alarm[0];
	global.alarm1 = alarm[1];
	alarm[0] = -1;
	alarm[1] = -1;
}

function start_river_fail(){
	with oWagonCross1 {
		image_index=0;
		is_crossed = true;
	}
	oRiverBottom.is_moving = false;
	oRiverTop.is_moving = false;	
}

function river_answer(){
	with oWagonCross1 {
		if global.player_[0][playertype.faint]{
			room_goto(rmGameOver);
			exit;
		}
		if is_crossed  {
			room_goto(rmTravel);
			exit;
		}	
	}
}

function final_river_activate(){
	instance_activate_all();
}

function scr_final_answer(finalAnswer){
	if finalAnswer !="" {
		toilet_answer_YN(finalAnswer);	
	}
}

function scr_final_answer1(finalAnswer){
	if finalAnswer !="" {
		toilet_answer_YN1(finalAnswer);	
	}
}

function scr_final_answer2(finalAnswer){
	if finalAnswer !="" {
		toilet_answer_YN2(finalAnswer);
}
}
function no_script(){
 // no script here
}

