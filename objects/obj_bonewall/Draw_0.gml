if (instance_exists(self)){
	surface_set_target(global.attack_surf)
	gpu_set_scissor(obj_actionbox.bbox_left, obj_actionbox.bbox_top, global.box_width, global.box_height);
	draw_self()
	surface_reset_target();
}