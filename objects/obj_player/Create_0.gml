h_speed = 0;
vspeed = 0;
grounded = false;


gun_cooldown = 0;
platform = true;

dir = 1;
max_hspeed = 3;

recoil = 0;

body_offset = 14;
body_angle = 0
body_dir = 1;

head_x = x;
head_y = y;
head_angle = 0;

gun_x = x
gun_y = y;

bullet_x = x;
bullet_y = y;

arm_x = x;
arm_y = y;
arm_angle = 0;

depth = -10

bonus_jump_counter = 1;
bonus_max_jump_count = 1;

leg_frame = 0

headspr = spr_robothead_0
torsospr = spr_robotbody_0
armspr = spr_robotarm_0
legspr = spr_robot_legs_0
gunspr = spr_robotgun_0

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