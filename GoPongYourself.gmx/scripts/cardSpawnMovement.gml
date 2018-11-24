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

if (x != tx ||  y != ty) {
//Move
    x = smoothApproach(x, tx, .1);
    y = smoothApproach(y, ty, .1);
//Flip
    var total_dis = point_distance(xstart, ystart, tx, ty);
    var dis = point_distance(x, y, tx, ty);
    var xscale = (dis/(total_dis/2)-1)*-1;
    image_xscale = xscale;
}
