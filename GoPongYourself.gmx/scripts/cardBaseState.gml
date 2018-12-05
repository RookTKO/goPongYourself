///
var tx, ty = objDeck.y;
switch (index) {
    case 1:
        tx = 640;
        break;
        
    case 2:
        tx = 800;
        break;
        
    case 3:
        tx = 960;
        break;
        
    case 4:
        tx = 1120;
        break;
        
    case 5:
        tx = 1280;
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
    depth = -2;
}
