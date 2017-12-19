///scr_na_enemy_bounce
bounce = irandom_range(bounceLow,bounceHigh);
if(bounce > enemy_speed) {
x+=enemy_speed*bounceDir;
bounce -= enemy_speed; 
}else {
x+=bounce*bounceDir;
bounce -= bounce;    
}
