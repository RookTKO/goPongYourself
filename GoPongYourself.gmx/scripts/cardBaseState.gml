///
var tx, ty = 544;
switch (index) {
    case 1:
        tx = 64;
        break;
        
    case 2:
        tx = 192;
        break;
        
    case 3:
        tx = 320;
        break;
        
    case 4:
        tx = 448;
        break;
        
    case 5:
        tx = 576;
        break;
}
if (round(x) != tx ||  round(y) != ty) {
//Move
    x = smoothApproach(x, tx, .1);
    y = smoothApproach(y, ty, .1);
}
else
{
    x = tx;
    y = ty;
    state = cardIdle;
}
