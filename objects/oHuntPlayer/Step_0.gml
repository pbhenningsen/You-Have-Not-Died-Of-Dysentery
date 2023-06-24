var key_left  = keyboard_check_pressed(vk_left) or keyboard_check_pressed(188);
var key_right = keyboard_check_pressed(vk_right) or keyboard_check_pressed(190);
var key_fire  = keyboard_check_pressed(vk_space);
var key_walk  = keyboard_check_pressed(vk_enter);
var move_LR = key_right - key_left;
dir_ -= move_LR;

if keyboard_check_pressed(vk_numpad1)  dir_ = 5;
if keyboard_check_pressed(vk_numpad2)  dir_ = 6;
if keyboard_check_pressed(vk_numpad3)  dir_ = 7;
if keyboard_check_pressed(vk_numpad4)  dir_ = 4;
if keyboard_check_pressed(vk_numpad5)  dir_ = 6;
if keyboard_check_pressed(vk_numpad6)  dir_ = 0;
if keyboard_check_pressed(vk_numpad7)  dir_ = 3;
if keyboard_check_pressed(vk_numpad8)  dir_ = 2;
if keyboard_check_pressed(vk_numpad9)  dir_ = 1;
if dir_ < 0 dir_ = 7;
dir_ = dir_ mod 8;
image_index = dir_;
var _bdir = 0;
switch ( dir_ ) {
    case 0:
        _bdir = 0;
        break;
    case 1:
        _bdir = 30;
        break;
    case 2:
        _bdir = 90;
        break;
    case 3:
        _bdir = 150;
        break;
    case 4:
        _bdir = 180;
        break;
    case 5:
        _bdir = 210;
        break;
    case 6:
        _bdir = 270;
        break;
    case 7:
        _bdir = 330;
        break;
    case 8:
        _bdir = 0;
        break;
}


var _bulletx = lengthdir_x(32,_bdir);
var _bullety = lengthdir_y(32,_bdir);

if key_fire {
	if global.ammunition>=1 {
		global.ammunition--;
		play_audio_sound(sndBang);
		instance_create_depth(x+_bulletx,y+_bullety,depth+1,oBullet,{
			bulletdir_ :  _bdir
		});
	}
}

if key_walk {
	walknow_ = !walknow_;
}

if walknow_ {
	x += lengthdir_x(2,_bdir);
	y += lengthdir_y(2,_bdir);	
}

depth = -y;