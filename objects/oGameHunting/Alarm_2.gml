/// @desc Popup question
if global.ctrStop == 0 {
	var _prompt = choose(
	"Uh-oh, your bowels are about to pull the trigger! Take a break to relieve yourself?  [y/n]",
	"Uh-oh, you're about to shoot from the hip! Take a break to relieve yourself?  [y/n]",
	"Uh-oh, it's firing out of you like a musket! Take a break to relieve yourself?  [y/n]",
	"Uh-oh, your guts are full of gunpowder! Take a break to relieve yourself?   [y/n]",
	"Uh-oh, it feels like there's a bayonette in your intestines! Take a break to relieve yourself?  [y/n]",
	);
	create_popup_question(texttype.yesno,_prompt, hunting_deactivate,scr_final_answer1);	
	global.ctrStop++
}
