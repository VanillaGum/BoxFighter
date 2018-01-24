//scr_na_enemy_chase(type)
direction_chase = scr_na_enemy_chase_check();
width = sprite_width;
height = sprite_height;
type = argument0;
//Types
//0:Can not drop down and jump
//1:Can Drop Down + Jump Up Floor 
if (bounce > 0) {
   if(bounce < enemy_speed) {
             x+= bounce*bounceDir;
             bounce -= bounce;
   }else {
         x+= enemy_speed*bounceDir;
         bounce -=enemy_speed;
   }
}else if (direction_chase == 1) {
   //Go Left
   //Check if cannot go down floor
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
                     bounceDir = 1;
                     scr_na_enemy_bounce();     
               }
         } 
      }else{
            //No Floor
            //Check if at tip of floor
            if (place_meeting(x-1,y+32,obj_floor)) {
               x-=1;
            }else{
                  //Do a bounce
                  bounceDir = 1;
                  scr_na_enemy_bounce();
            }
      }
   }else {
   //Can go down floor type
   }
}else if(direction_chase == -1){
   //Go Right
   if (type == 0) {
      //Check if there is floor 
      if (place_meeting(x+enemy_speed,y+32,obj_floor)) {
         //Check if wall in front
         if (!place_meeting(x+enemy_speed,y,obj_floor)) {
            x+=enemy_speed;
         }else{
               if (place_meeting(x+1,y,obj_floor)) {
                  x+=1;   
               }else{
                     //Do A bounce
                     bounceDir = -1;
                     scr_na_enemy_bounce();     
               }
         } 
      }else{
            //No Floor
            //Check if at tip of floor
            if (place_meeting(x+1,y+32,obj_floor)) {
               x+=1;
            }else{
                  //Do a bounce
                  bounceDir = -1;
                  scr_na_enemy_bounce();
            }
      }
   }else {
   //Can go down floor type
   }
}else {
      if(direction_chase < -1) {
            //Go Right
            x+=enemy_speed;
            direction_chase-= enemy_speed;
            if(direction_chase >= -1) {
               direction_chase = 0;
            }
      }else if (direction_chase > 1){
            //Go Left
            x-=enemy_speed;
            direction_chase-= enemy_speed;
            if(direction_chase <= 1) {
               direction_chase = 0;
            }
      }
}     
