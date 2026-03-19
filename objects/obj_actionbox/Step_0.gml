depth = 1;

inst_WallTop.x = bbox_left;
inst_WallTop.y = bbox_top +  8;
inst_WallTop.image_xscale = sprite_width/16;

inst_WallBottom.x = bbox_left;
inst_WallBottom.y = bbox_bottom -  8;
inst_WallBottom.image_xscale = sprite_width/16;

inst_WallLeft.x = bbox_left + 8;
inst_WallLeft.y = bbox_top;
inst_WallLeft.image_yscale = sprite_height/16;

inst_WallRight.x = bbox_right - 8;
inst_WallRight.y = bbox_top;
inst_WallRight.image_yscale = sprite_height/16;

//box animation
//80 pixel 
image_xscale = global.box_width / 80;
image_yscale = global.box_height / 80;



