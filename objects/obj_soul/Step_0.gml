depth = -999
var right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var movespd = 5;
var xspd = (right - left) * movespd;
var yspd = (down - up) * movespd;



if place_meeting(x + xspd, y, obj_actionhitbox_ver) ==true{
	xspd = 0;
}
if place_meeting(x, y + yspd, obj_actionhitbox_hor) ==true{
	yspd = 0;
}


//souls should only be moveable in Boss' turn
//so turns will be 1, 3, 5?

if(global.turn_player == 0 and global.cutscene == false){
x = x + xspd;
y= y+ yspd;
x = clamp(x , obj_actionbox.bbox_left , obj_actionbox.bbox_right);
y = clamp(y , obj_actionbox.bbox_top , obj_actionbox.bbox_bottom);
}



