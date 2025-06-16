with obj_rangen_dummy{
    
    with instance_create_depth(x,y,depth,obj_rangen_room){
        image_index = other.type;
        global.enemycount+= 1;
        instance_create_depth(x,y,-2,obj_enemy_drone)
        
        switch other.image_angle {
            
            case 0:{
                sprite_index = spr_rangen_walls_a_right;
                
                switch other.type {
                    case 0: { 
                        create_entrance_door(x,y+96);
                        create_exit_door(x,y+96);
                        break;
                    }
                    case 1: { 
                        create_entrance_door(x+16,y+32);
                        create_exit_door(x+16,y+32); 
                        break 
                    }
                    case 2: { 
                        create_entrance_door(x,y+32); 
                        create_exit_door(x,y+32); 
                        instance_create_depth(x+32,y-32,depth-1,obj_platform)
                        instance_create_depth(x-48,y-80,depth-1,obj_platform)
                        break 
                    }
                    case 3: { 
                        create_entrance_door(x-96,y+48); 
                        create_exit_door(x-96,y+48); 
                        instance_create_depth(x+32,y,depth-1,obj_platform)
                        instance_create_depth(x-32,y+64,depth-1,obj_platform)
                        instance_create_depth(x-80,y+64,depth-1,obj_platform)
                        instance_create_depth(x+16,y+128,depth-1,obj_platform)
                        instance_create_depth(x+64,y+128,depth-1,obj_platform)
                        break 
                    }
                    case 4: { 
                        instance_create_depth(x-16,y-96,depth-1,obj_platform)
                        instance_create_depth(x-64,y-16,depth-1,obj_platform)
                        instance_create_depth(x-112,y+48,depth-1,obj_platform)
                        instance_create_depth(x-80,y+112,depth-1,obj_platform)
                        break 
                    }
                    case 5: { 
                        create_entrance_door(x,y+96);
                        create_exit_door(x,y+96);
                        instance_create_depth(x-96,y+112,depth-1,obj_platform)
                        instance_create_depth(x-48,y+112,depth-1,obj_platform)
                        instance_create_depth(x,y+112,depth-1,obj_platform)
                        instance_create_depth(x+48,y+112,depth-1,obj_platform)
                        break 
                    }
                    case 6: { 
                        create_entrance_door(x,y+16); 
                        create_exit_door(x,y+16);
                        instance_create_depth(x-48,y-98,depth-1,obj_platform)
                        instance_create_depth(x,y-98,depth-1,obj_platform)
                        instance_create_depth(x-96,y-32,depth-1,obj_platform)
                        instance_create_depth(x+48,y-32,depth-1,obj_platform)
                        break 
                    }
                }
                break;
            }
            case 90:{
                sprite_index = spr_rangen_walls_a_up;
                switch other.type {
                    case 0: {
                        instance_create_depth(x-16,y-96,depth-1,obj_platform)
                        instance_create_depth(x-80,y-64,depth-1,obj_platform)
                        instance_create_depth(x-80,y,depth-1,obj_platform)
                        instance_create_depth(x-16,y+64,depth-1,obj_platform)
                        instance_create_depth(x+32,y+112,depth-1,obj_platform)
                        break 
                    }
                    case 1: { 
                        instance_create_depth(x-32,y-16,depth-1,obj_platform)
                        instance_create_depth(x-80,y-16,depth-1,obj_platform)
                        instance_create_depth(x+16,y-16,depth-1,obj_platform)
                        
                        instance_create_depth(x-16,y+112,depth-1,obj_platform)
                        instance_create_depth(x+32,y+112,depth-1,obj_platform)
                        
                        instance_create_depth(x+32,y-32,depth-1,obj_ladder)
                        instance_create_depth(x+32,y-16,depth-1,obj_ladder)
                        instance_create_depth(x+32,y,depth-1,obj_ladder)
                        instance_create_depth(x+32,y+16,depth-1,obj_ladder)
                        instance_create_depth(x+32,y+32,depth-1,obj_ladder)
                        instance_create_depth(x+32,y+48,depth-1,obj_ladder)
                        instance_create_depth(x+32,y+64,depth-1,obj_ladder)
                        instance_create_depth(x+32,y+80,depth-1,obj_ladder)
                        instance_create_depth(x+32,y+96,depth-1,obj_ladder)
                        break
                    }
                    case 2: { 
                        instance_create_depth(x+32,y,depth-1,obj_platform)
                        instance_create_depth(x-32,y+64,depth-1,obj_platform)
                        instance_create_depth(x-80,y+64,depth-1,obj_platform)
                        instance_create_depth(x+16,y+128,depth-1,obj_platform)
                        instance_create_depth(x+64,y+128,depth-1,obj_platform)
                        break 
                    }
                    case 3: {
                        instance_create_depth(x-16,y,depth-1,obj_platform)
                        instance_create_depth(x+32,y+64,depth-1,obj_platform)
                        instance_create_depth(x+32,y+128,depth-1,obj_platform)
                        break 
                    }
                    case 4: { 
                        instance_create_depth(x-96,y+112,depth-1,obj_platform)
                        instance_create_depth(x-48,y+112,depth-1,obj_platform)
                        instance_create_depth(x,y+112,depth-1,obj_platform)
                        instance_create_depth(x+48,y+112,depth-1,obj_platform)
                        break 
                    }
                    case 5: { 
                        instance_create_depth(x-32,y-96,depth-1,obj_platform)
                        instance_create_depth(x+16,y-16,depth-1,obj_platform)
                        instance_create_depth(x+64,y+48,depth-1,obj_platform)
                        instance_create_depth(x+32,y+112,depth-1,obj_platform)
                        break 
                    }
                    case 6: { 
                        instance_create_depth(x-16,y-96,depth-1,obj_platform)
                        instance_create_depth(x-64,y-16,depth-1,obj_platform)
                        instance_create_depth(x-112,y+48,depth-1,obj_platform)
                        instance_create_depth(x-80,y+112,depth-1,obj_platform)
                        break 
                    }
                }
                break;
            }
            case 180:{
                sprite_index = spr_rangen_walls_a_left;
                switch other.type {
                    case 0: { 
                        create_entrance_door(x,y+96); 
                        create_exit_door(x,y+96); 
                        break ;
                    }
                    case 1: { 
                        create_entrance_door(x-112,y+32); 
                        instance_create_depth(x+16,y+48,depth-1,obj_platform);
                        break;
                    }
                    case 2: { 
                        instance_create_depth(x-16,y,depth-1,obj_platform)
                        instance_create_depth(x+32,y+64,depth-1,obj_platform)
                        instance_create_depth(x+32,y+128,depth-1,obj_platform)
                        break 
                    }
                    case 3: { 
                        instance_create_depth(x-32,y-16,depth-1,obj_platform)
                        instance_create_depth(x-32,y-128,depth-1,obj_platform)
                        break 
                    }
                    case 4: { 
                        instance_create_depth(x-32,y-96,depth-1,obj_platform)
                        instance_create_depth(x+16,y-16,depth-1,obj_platform)
                        instance_create_depth(x+64,y+48,depth-1,obj_platform)
                        instance_create_depth(x+32,y+112,depth-1,obj_platform)
                        break 
                    }
                    case 5: { 
                        create_entrance_door(x,y+16); 
                        create_exit_door(x,y+16);
                        instance_create_depth(x-48,y-96,depth-1,obj_platform)
                        instance_create_depth(x,y-96,depth-1,obj_platform)
                        instance_create_depth(x-96,y-32,depth-1,obj_platform)
                        instance_create_depth(x+48,y-32,depth-1,obj_platform)
                        break 
                    }
                    case 6: { 
                        create_entrance_door(x,y+96);
                        create_exit_door(x,y+96);
                        instance_create_depth(x-96,y+112,depth-1,obj_platform)
                        instance_create_depth(x-48,y+112,depth-1,obj_platform)
                        instance_create_depth(x,y+112,depth-1,obj_platform)
                        instance_create_depth(x+48,y+112,depth-1,obj_platform)
                        break 
                    }
                }
                break;
            }
            case 270:{
                sprite_index = spr_rangen_walls_a_down;
                switch other.type {
                    case 0: { 
                        instance_create_depth(x-16,y-96,depth-1,obj_platform)
                        instance_create_depth(x-80,y-64,depth-1,obj_platform)
                        
                        instance_create_depth(x-80,y-80,depth-1,obj_ladder)
                        instance_create_depth(x-80,y-64,depth-1,obj_ladder)
                        instance_create_depth(x-80,y-48,depth-1,obj_ladder)
                        instance_create_depth(x-80,y-32,depth-1,obj_ladder)
                        instance_create_depth(x-80,y-16,depth-1,obj_ladder)
                        instance_create_depth(x-80,y,depth-1,obj_ladder)
                        instance_create_depth(x-80,y+16,depth-1,obj_ladder)
                        instance_create_depth(x-80,y+32,depth-1,obj_ladder)
                        instance_create_depth(x-80,y+48,depth-1,obj_ladder)
                        
                        instance_create_depth(x-80,y+64,depth-1,obj_platform)
                        instance_create_depth(x+32,y+112,depth-1,obj_platform)
                        break;
                    }
                    case 1: { 
                        instance_create_depth(x-16,y-96,depth-1,obj_platform)
                        instance_create_depth(x-80,y-64,depth-1,obj_platform)
                        instance_create_depth(x-80,y,depth-1,obj_platform)
                        instance_create_depth(x-16,y+64,depth-1,obj_platform)
                        instance_create_depth(x+32,y+112,depth-1,obj_platform)
                        break;
                    }
                    case 2: { 
                        instance_create_depth(x-32,y-16,depth-1,obj_platform)
                        instance_create_depth(x-32,y-128,depth-1,obj_platform)
                        break 
                    }
                    case 3: { 
                        instance_create_depth(x+32,y-32,depth-1,obj_platform)
                        instance_create_depth(x-48,y-80,depth-1,obj_platform)
                        break 
                    }
                    case 4: { 
                         instance_create_depth(x-48,y-98,depth-1,obj_platform)
                        instance_create_depth(x,y-98,depth-1,obj_platform)
                        instance_create_depth(x-96,y-32,depth-1,obj_platform)
                        instance_create_depth(x+48,y-32,depth-1,obj_platform)
                        break 
                    }
                    case 5: { 
                        instance_create_depth(x-16,y-96,depth-1,obj_platform)
                        instance_create_depth(x-64,y-16,depth-1,obj_platform)
                        instance_create_depth(x-112,y+48,depth-1,obj_platform)
                        instance_create_depth(x-80,y+112,depth-1,obj_platform)
                        break 
                    }
                    case 6: { 
                        instance_create_depth(x-32,y-96,depth-1,obj_platform)
                        instance_create_depth(x+16,y-16,depth-1,obj_platform)
                        instance_create_depth(x+64,y+48,depth-1,obj_platform)
                        instance_create_depth(x+32,y+112,depth-1,obj_platform)
                        break 
                    }
                }
                break;
            }
            default:{
                sprite_index = spr_rangen_walls_a_right;
                break;
            }
        }
        outline.image_angle = image_angle;
        outline.sprite_index = sprite_index;
        outline.image_index = image_index;
    }
    instance_destroy();
}

//obj_rangen_dummy.image_alpha = 0.1;
instance_destroy(obj_rangen_dummy);
