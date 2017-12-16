///scr_hitbox_enemylist(ds_list,maxhit,hit);
var enemy_list = argument0;
var max_hit = argument1;
var hit = argument2;
if (!ds_list_empty(enemy_list)) {
    ds_list_sort(enemy_list,true);
    //If Leser than max_hit amount
    if (ds_list_size(enemy_list) < max_hit) {
        for (i = 0; i < ds_list_size(enemy_list);i++) {
            var enemy = ds_list_find_value(enemy_list,i);
            scr_hit_enemy(enemy);
            hit++;
        }  
    }else {
        //If Collide with more than max_hit amount
        //Hit only lowest health enemies
        for (i = 0; i < max_hit;i++) {
            var enemy = ds_list_find_value(enemy_list,i);
            scr_hit_enemy(enemy);
            hit++;
        }  
    } 
    if (hit == max_hit) {
        instance_destroy(self);
    }
}
ds_list_clear(enemy_list);
