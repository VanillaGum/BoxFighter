///Gain Exp Code
if (lvlup != 1) {
    if (xpgained > 0) {
        if (plusxp == 0) {
            plusxp = xpgained/10;
        }
            
        xp += plusxp;
        xpgained -= plusxp;
    }
}
