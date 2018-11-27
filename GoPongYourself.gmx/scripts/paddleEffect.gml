///paddleEffect(cardID)
switch (argument0) 
{
    case 0 :
        if instance_exists(objPaddleAi)
        {
            objPaddleAi.image_xscale = objPaddleAi.image_xscale*0.5;            
        }
        break;
    case 1 :
        if instance_exists(objPaddleP1)
        {
            objPaddleP1.image_xscale = objPaddleP1.image_xscale*2;          
        }
        break;
    case 11 :
        if instance_exists(objPaddleP1) && instance_number(objPaddleP1) <= 2
        {
            var originalPaddle = objPaddleP1;
            objPaddleP1.x = (room_width/4);
            var secondPaddle = instance_create(x, originalPaddle.y, objPaddleP1);
            secondPaddle.image_xscale = originalPaddle.image_xscale;
            secondPaddle.x = ((room_width/2)+ (room_width/4));
            secondPaddle.primaryPaddle = false;
        }
        break;
    
}
