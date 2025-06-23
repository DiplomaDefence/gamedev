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