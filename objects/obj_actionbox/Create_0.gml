var LayerSet = "Instances"


inst_WallTop = instance_create_layer(bbox_left, bbox_top +8, LayerSet, obj_actionhitbox_hor);
inst_WallBottom = instance_create_layer(bbox_left, bbox_bottom -8, LayerSet, obj_actionhitbox_hor);

inst_WallLeft = instance_create_layer(bbox_left +8 , bbox_top, LayerSet, obj_actionhitbox_ver);
inst_WallRight = instance_create_layer(bbox_right -8, bbox_top, LayerSet, obj_actionhitbox_ver);

box_h_expanding = false;
box_v_expanding = false;

global.box_width = 1200;
global.box_height = 300;

player_turn_box_width = 1200;
player_turn_box_height = 300;