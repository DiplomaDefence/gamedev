leg_frame = 0

headspr = spr_robothead_0
torsospr = spr_robotbody_0
armspr = spr_robotarm_0
legspr = spr_robot_legs_0
gunspr = spr_robotgun_0

switch global.head{
    case 0: 
    headspr = spr_robothead_0; break;
    case 1: 
    headspr = spr_robothead_1; break;
    case 2: 
    headspr = spr_robothead_2; break;
    case 3: 
    headspr = spr_robothead_3; break;
}

switch global.torso{
    case 0:
       torsospr = spr_robotbody_0; break;
    case 1:
        torsospr = spr_robotbody_1; break
}

switch global.arms{ 
    case 0: 
    armspr = spr_robotarm_0; break;
    case 1: 
    armspr = spr_robotarm_1; break
}

switch global.legs{
    case 0:
       legspr = spr_robot_legs_0; break;
    case 1:
       legspr = spr_robot_legs_1; break;
    case 2:
       legspr = spr_robot_legs_2; break
}

switch global.gun{
    case 0:
       gunspr = spr_robotgun_0; break;
    case 1:
        gunspr = spr_robotgun_1; break;
}

x = round(x);
y = round(y);

body_dir = 1;

body_angle = 0;
body_offset = 14;
arm_angle = 0;
recoil = 0;

head_x = x+lengthdir_x(19,(body_angle+90+10*body_dir));
head_y = y+body_offset+lengthdir_y(19,(body_angle+90+10*body_dir));

arm_x = x+lengthdir_x(12,(body_angle+90+30*body_dir))+lengthdir_x(-recoil,arm_angle-90+90*body_dir);
arm_y = y+body_offset+lengthdir_y(12,(body_angle+90+30*body_dir))+lengthdir_y(-recoil,arm_angle-90+90*body_dir);

gun_x = arm_x +lengthdir_x(21,(arm_angle-90+85*body_dir))
gun_y = arm_y +lengthdir_y(21,(arm_angle-90+85*body_dir))

bullet_x = gun_x+lengthdir_x(21,(arm_angle-90+90*body_dir))
bullet_y = gun_y+lengthdir_y(21,(arm_angle-90+90*body_dir))