alarm[0]=room_speed * irandom_range(2,5);
ctr_++;
if ctr_ > maxCount_ ctr_ = 0;
instance_create_layer(x,y,"Instances",animals_[ctr_]);
