//scr_na_enemy_chase(type)
direction_chase = scr_na_enemy_chase_check();
width = sprite_width;
height = sprite_height;
type = argument0;
//Types
//0:Can not drop down and jump
//1:Can Drop Down + Jump Up Floor 
if (direction_chase == 1) {
   //Go Left
   //Check if can go down floor
   if (type == 0) {
      //Check if there is floor 
      if (place_meeting(x-enemy_speed,y+32,obj_floor)) {
         //Check if wall in front
         if (!place_meeting(x-enemy_speed,y,obj_floor)) {
            x-=enemy_speed;
         }else{
               if (place_meeting(x-1,y,obj_floor)) {
                  x-=1;   
               }else{
                     //Do A bounce
                     x+= enemy_speed;           
               }
         } 
      }else{
            //No Floor
            //Check if at tip of floor
            if (place_meeting(x-1,y+32,obj_floor)) {
               x-=1;
            }else{
                  //Do a bounce
                  x+= enemy_speed;
            }
      }
   }else {
   
   }
}else {
   //Go Right
}
