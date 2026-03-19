if instance_exists(obj_attackbar){
	if (global.battle_attacking == true){
		if (obj_attackbar.image_yscale < 1){
	    obj_attackbar.image_yscale += 0.018;
		}
	}
}

if global.target_expanding != 0{
	if (global.target_expanding = 1){
		if (obj_attacktarget.image_xscale < 1){
		obj_attacktarget.image_xscale += 0.05;
	    }
	    if (obj_attacktarget.image_alpha < 1){
		obj_attacktarget.image_alpha += 0.05;
	    }
	    if(obj_attacktarget.image_xscale == 1 and obj_attacktarget.image_alpha == 1){
		global.target_expanding = 0;
	    }
}

if(global.target_expanding = 2){
	if (obj_attacktarget.image_xscale > 0){
		obj_attacktarget.image_xscale -= 0.05;
	}
	if (obj_attacktarget.image_alpha > 0){
		obj_attacktarget.image_alpha -= 0.05;
	}
	if(obj_attacktarget.image_xscale == 0 and obj_attacktarget.image_alpha == 0){
		instance_destroy(obj_attacktarget);
		global.target_expanding = 0;
	}
}
}

if (global.boss_hurtani = true){
	switch(global.boss_selected){
		case 1:
		global.boss_hurtani = false;
		break;
		case 2:
		global.boss_hurtani = false;
		break;
	}
}


