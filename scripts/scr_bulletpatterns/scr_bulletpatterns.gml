function bonewall(time_, cooldown_) {
	if (global.init == false){
		    global.attack_finished = false;
			time = time_;
			cooldown = cooldown_;
			global.attack_timer_1 = time;
	        global.cooldown_1 = cooldown;
			global.init = true
	}
	
	if (global.attack_timer_1 > 0){ // bonewall duration
		global.attack_timer_1 --;
		global.cooldown_1 --;
		if (global.cooldown_1 <= 0 ){
			bone = instance_create_layer(1300,700,"Attacks",obj_bonewall)
			global.draw = true
			global.cooldown_1 = cooldown; //reset cooldown
		}
	}
	
	else{
		if (instance_exists(bone)){
			instance_destroy(bone);
		}
	global.attack_finished = true;
	}
}