x = round(x);
y = round(y);

head_x = x+lengthdir_x(19,(body_angle+90+10*body_dir));
head_y = y+body_offset+lengthdir_y(19,(body_angle+90+10*body_dir));

arm_x = x+lengthdir_x(12,(body_angle+90+30*body_dir))+lengthdir_x(-recoil,arm_angle-90+90*body_dir);
arm_y = y+body_offset+lengthdir_y(12,(body_angle+90+30*body_dir))+lengthdir_y(-recoil,arm_angle-90+90*body_dir);

gun_x = arm_x +lengthdir_x(21,(arm_angle-90+85*body_dir))
gun_y = arm_y +lengthdir_y(21,(arm_angle-90+85*body_dir))

bullet_x = gun_x+lengthdir_x(21,(arm_angle-90+90*body_dir))
bullet_y = gun_y+lengthdir_y(21,(arm_angle-90+90*body_dir))