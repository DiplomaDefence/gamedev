if instance_exists(obj_boss_body){
    x = obj_boss_body.x;
    y = obj_boss_body.y-80
}

if hitframe > 0 {
    hit = true;
} else {
    hit = false;
}

if hitframe > 0 {
    hitframe -= 1;
}

if instance_exists(obj_player){
    eye_x = x+lengthdir_x(8,point_direction(x,y,obj_player.x,obj_player.y))
    eye_y = y+4+lengthdir_y(2,point_direction(x,y,obj_player.x,obj_player.y))
}

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
        instance_destroy(last_bullet)
    }
}