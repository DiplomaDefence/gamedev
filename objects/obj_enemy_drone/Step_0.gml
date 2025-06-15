if place_meeting(x,y,obj_playerbullet){
    var bulletid = instance_place(x,y,obj_playerbullet);
    if bulletid != last_bullet {
        last_bullet = bulletid;
            
        passed_damage = global.damage*global.damage_modifier;
            
        if global.crit_percentage >= random_range(1,100){
            passed_damage = global.damage*global.damage_modifier + global.damage*global.crit_damage_modifier
        }
            
        hp -= passed_damage;
        with instance_create_depth(x,y,-3,obj_damage_number){
            if other.passed_damage > global.damage*global.damage_modifier{
                crit = true;
            }
                
            text = other.passed_damage;
        }
        hitframe = 5;
        //instance_destroy(last_bullet)
    }
}

if instance_exists(obj_player){
    target = obj_player;
    if teleport_cd <= 0 {
        var ang = irandom_range(0,360)
        goto_x = target.x+lengthdir_x(128,ang)
        goto_y = target.y+lengthdir_y(128,ang)
        
        alarm[0] = 30;
        teleport_cd = 120;
    }
}

x = lerp(x,goto_x,0.1);
y = lerp(y,goto_y,0.1);

if teleport_cd > 0 and distance_to_object(target) < 256{
    teleport_cd--
}


if hp <= 0 {
    instance_destroy()
}


if hitframe == 0 {
    sprite_index = spr_drone
} else {
    sprite_index = spr_drone_hit
}

if hitframe > 0 {
    hitframe -= 1;
}