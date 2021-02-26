x = 20*global.position_x;
y = obj_text_box.position_y;
global.yspeed = y-y1;
y1 = y;
instance_create_layer(x,y,"Instances",obj_trainee);