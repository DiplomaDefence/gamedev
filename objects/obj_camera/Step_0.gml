if instance_exists(obj_player){
    x = obj_player.x+irandom_range(-global.shake,global.shake);
    y = obj_player.y+irandom_range(-global.shake,global.shake);
} else if instance_exists(obj_entrance_door){
    x = obj_entrance_door.x;
    y = obj_entrance_door.y;
} else {
    x = room_width/2;
    y = room_height/2;
}