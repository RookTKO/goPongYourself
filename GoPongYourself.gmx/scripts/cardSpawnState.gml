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
    x = smoothApproach(x, tx, .2);
    y = smoothApproach(y, ty, .2);
//Flip
    var total_dis = point_distance(xstart, ystart, tx, ty);
    var dis = point_distance(x, y, tx, ty);
    var xscale = (dis/(total_dis/2)-1)*-1;
    image_xscale = xscale;
}

else
{
    x = tx;
    y = ty;
    state = cardIdle;
}
