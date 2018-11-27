///hpEffect(cardID)
switch (argument0) 
{
    case 9 :
        if instance_exists(objPaddleP1)
        {
                objPaddleP1.hP += 10;
        }
        break;
    case 30 :
        if instance_exists(objPaddleP1) && instance_exists(objPaddleAi)
        {
                objPaddleP1.hP = (objPaddleP1.hP/2);
                objPaddleAi.hP = (objPaddleAi.hP/2);
        }
        break;
}
