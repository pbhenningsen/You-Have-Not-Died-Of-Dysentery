#macro SPRITESIZE 48

enum playerstate {
	walking,
	idle,
}

state         = playerstate.idle;
ctr_ = 0
is_activated  = true;

_move =0;
x_pos   = x div SPRITESIZE;
y_pos   = y div SPRITESIZE;
x_to    = x_pos;
y_to    = y_pos;
x_from  = x_pos;
y_from  = y_pos;
walking_anim_lenght =1;
walking_anim_time   = 0;
alarm[2] = room_speed * 20;  //change this number to make there be more stops