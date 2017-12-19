/// Level Up Code
if (xp >= levelupxp) {
    if (lvlup != 1) {
        lvlup = 1;
        level++;
        lvledup = levelupxp;
        minusval = levelupxp/100 * 10;
    }
}
//Check If Lvup In Progress
if (lvlup == 1) {
    //If Bar Goes To Zero
    if (lvledup <= 0) {
        lvlup = 0;
        levelupxp *= multiplier;  
    }else {
    //Check If xp to levelup is Not Fufilled   
        if (lvledup != 0) {
            //If Minusval Greater Than lvledup
            while (minusval > lvledup) {
                minusval--   
            }
                // Minusval not greater than lvledup Minus Xp
                lvledup -= minusval;
                xp -= minusval;
        }
    
    }  
}
