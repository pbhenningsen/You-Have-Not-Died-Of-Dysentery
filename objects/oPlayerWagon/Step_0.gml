if instance_exists(oPopupMessage) exit;
if instance_exists(oPopupQuestion) exit;

var key_left  = keyboard_check_pressed(vk_left)
var key_right = keyboard_check_pressed(vk_right)

var move_LR = key_right - key_left;
_move += move_LR;
_move = clamp(_move,-1,1);


if (state == playerstate.walking) {
	walking_anim_time += delta_time / 1000000;
	var _t = walking_anim_time / walking_anim_lenght;
	if (_t >=1) {
		walking_anim_time = 0;	
		_t=1;
		state = playerstate.idle;
	} 
	var _x = lerp(x_from,x_to, _t);
	var _y = lerp(y_from,y_to, _t);
	x = _x * SPRITESIZE;
	y = _y * SPRITESIZE;
} else { 
	if (_move!=0 ) {
		player_move(_move);
	} 
}


if alarm[2] == -1 and is_activated and ctr_ <= 1 {
	var _prompt = choose(
	"Uh-oh, the dam's about to burst! Take a break to relieve yourself?  [y/n]",
	"Uh-oh, flood's a comin'! Take a break to relieve yourself  [y/n]",
	"Uh-oh, something's flowin' downstream! Take a break to relieve yourself?  [y/n]",
	"Uh-oh, you're about to get a different kind of sea-sick! Take a break to relieve yourself?  [y/n]",
	);
	create_popup_question(texttype.yesno,_prompt, final_river_deactivate,scr_final_answer2);	
}

if global.ctrStop == 0 {
	var _prompt = choose(
	"Uh-oh, your bowels are about to pull the trigger! Take a break to relieve yourself?  [y/n]",
	"Uh-oh, you're about to shoot from the hip! Take a break to relieve yourself?  [y/n]",
	"Uh-oh, it's firing out of you like a musket! Take a break to relieve yourself?  [y/n]",
	"Uh-oh, your guts are full of gunpowder! Take a break to relieve yourself?   [y/n]",
	"Uh-oh, it feels like there's a bayonette in your intestines! Take a break to relieve yourself?  [y/n]",
	"Uh-oh, something's huntin' for a way out! Take a break to relieve yourself?  [y/n]",
	);
	create_popup_question(texttype.yesno,_prompt, hunting_deactivate,scr_final_answer1);	
	global.ctrStop++
}
