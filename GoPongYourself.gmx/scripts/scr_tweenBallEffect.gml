///scr_tweenBallEffect(argument0)

switch (argument0)
{
    case "hpup":
        i = instance_create(x, y, objtweenball);
        i.image_index = 1;
        break;
        
    case "hpdn":
        i = instance_create(x, y, objtweenball);
        i.image_index = 0;
        break;
        
    case "attup":
        break;
        
    case "attdn":
        break;
        
    case "spdup":
        break;
        
    case "spddn":
        break;
}
        
