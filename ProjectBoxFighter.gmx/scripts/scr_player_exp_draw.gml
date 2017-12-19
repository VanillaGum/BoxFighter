///Draw Player Levels Exp Hp And Mana
//Draw Gui
//Draw Level
draw_set_colour(c_black);
draw_text(8,720,"Level");
draw_set_colour(c_gray);
draw_text(105,720,level);
//Draw Xp
var barlength = xp/levelupxp;
if (barlength > 1) barlength = 1;
var height = 700;
var width = 288;
draw_sprite(spr_xpbar_inner,1,width,height);
draw_sprite_ext(spr_xpbar_fill,1,width,height,barlength,1,0,c_white,1);
draw_sprite(spr_xpbar,1,width,height);
