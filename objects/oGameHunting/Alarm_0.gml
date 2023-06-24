/// @desc Spawn Animals
alarm[0]=room_speed * irandom_range(1,5);
var _animals = choose(oRabbit,oDeer,oFox,oBufalo,oBear);
instance_create_layer(x,y,"Instances",_animals);