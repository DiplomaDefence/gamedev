if global.win{
    if image_speed == 0 and image_index == 0 {
        image_speed = 1;
    }
    if instance_exists(obj_player){
        if distance_to_object(obj_player) < 16 {
            if keyboard_check_pressed(ord("E")){
                room_goto(Room_boss)
            }
        }
    }
}