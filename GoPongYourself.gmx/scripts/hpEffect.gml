///hpEffect(cardID)
switch (argument0) 
{
    case 6 :
        if instance_exists(ball)
        {
                ball.virus = true;
        }
        break;
    case 9 :
        if instance_exists(objPaddleP1)
        {
                objPaddleP1.hP += 3;
        }
        break;
    case 12 :
        if instance_exists(ball)
        {
                ball.trojanhorse = true;
        }
        break;
    case 13 :
        if instance_exists(objPaddleP1)
        {
                objPaddleP1.bitcoin = true;
        }
        break;
    case 24 :
        if instance_exists(objPaddleAi)
        {
                objPaddleAi.spyware = true;
        }
        break;
    case 27 :
        if instance_exists(objPaddleP1) && instance_exists(objPaddleAi)
        {
                objPaddleP1.hP = floor(objPaddleP1.hP/2);
                objPaddleAi.hP = floor(objPaddleAi.hP/2);
        }
        break;
}
