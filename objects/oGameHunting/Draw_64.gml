draw_set_font(fntRetro);
draw_set_halign(fa_left);
draw_text(10,10,"Bullets left: " + string(global.ammunition));
draw_text(10,30,"Pounds of Meat: "    + string(global.huntnum));
//draw_text(10,50,"Time: "    + string(round(alarm[1])));

draw_text (120,445,"Press ESCAPE to leave");