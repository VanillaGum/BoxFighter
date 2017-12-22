if (direction_chase == 0) {
    //Check Which Direction To Chase
    if (x <obj_player.x) {
       return -1;
    }else if (x > obj_player.x) {
       return 1;
    }else {
       if(direction_chase == 0) {
          return choose(1,-1);  
       }else {
          return direction_chase;
       }
    }  
}else{
   if (x == obj_player.x) {
       return direction_chase;
   }else if (x <obj_player.x) {
       return -1;
    }else if (x > obj_player.x) {
       return 1;
    }
}
