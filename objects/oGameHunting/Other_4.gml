for (var i = 0; i < irandom_range(3,5); ++i) {
	with create_object(oForest){
		image_index = irandom(image_number-1);
		depth = -y;
	};   
}

is_activated = true;
create_object(oHuntPlayer);
alarm[0]=room_speed * irandom_range(1,5);
alarm[2]=room_speed * irandom_range(10,15);
alarm[1]=room_speed*20;