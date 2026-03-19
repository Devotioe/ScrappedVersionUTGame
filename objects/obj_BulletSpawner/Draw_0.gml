depth = 1


if (global.boss_attacking == true){
	switch global.boss{
	case 1:
	devofight_attacks();
	break;
	case 2:
	break;
	}
}


if !surface_exists(global.attack_surf){
	global.attack_surf = surface_create(room_width, room_height);
	surface_set_target(global.attack_surf);
	draw_clear_alpha(c_black , 0 );
	surface_reset_target();
}




//draw_surface_part(global.attack_surf, 0 , 700, global.box_width , global.box_height ,0 ,0)
draw_surface(global.attack_surf, 0 ,0);

surface_set_target(global.attack_surf);
draw_clear_alpha(c_black , 0 );
surface_reset_target();

