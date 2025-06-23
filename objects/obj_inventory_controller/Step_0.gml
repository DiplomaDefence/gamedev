if tab != old_tab {
    old_tab = tab;
    instance_destroy(obj_inventory_item);
}

if !instance_exists(obj_inventory_item){
    switch tab{
        case 0: 
        with instance_create_depth(x,y,-1,obj_inventory_item){
            type = 0; item = 0;
        }; 
        with instance_create_depth(x+32+1,y,-1,obj_inventory_item){
            type = 0; item = 1; 
        }
        with instance_create_depth(x+64+2,y,-1,obj_inventory_item){
            type = 0; item = 2;
        }
        with instance_create_depth(x+96+3,y,-1,obj_inventory_item){
            type = 0; item = 3;
        }
        break;
    }
}
