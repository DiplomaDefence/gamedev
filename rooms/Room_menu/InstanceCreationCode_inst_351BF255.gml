function game(){
    global.max_hp = 20;
    global.hp = global.max_hp;
    
    global.pause = false;
    
    global.shooting_speed = 0.0;
    global.damage = 5;
    
    global.damage_item = 0;
    global.speed_item = 0;
    global.health_item = 0;
    global.shooting_speed_item = 0;
    global.crit_chance_item = 0;
    global.crit_damage_item = 0;
    
    global.damage_modifier = 1.0;
    global.crit_percentage = 50;
    global.crit_damage_modifier = 1.0;
    global.speed_modifier = 1.0;
    global.health_modifier = 1.0;
    
    audio_stop_all()
    room_goto(Room2)
}
func = game;
text = "start"