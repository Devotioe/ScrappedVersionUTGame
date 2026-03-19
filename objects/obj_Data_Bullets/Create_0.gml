function bullets_data(speed_, direction_, damage_, inv_ ) constructor {
	speed = speed_;
	direction = direction_;
	damage = damage_;
	inv = inv_;
}

global.bone_wall = new bullets_data ( 1, 180, 1 , false);
