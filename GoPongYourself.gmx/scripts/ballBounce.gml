///ballBounce(paddleType)
/*var ySwitch = false; 

if (argument0 == objPaddleP1)
{
    if (self.y < argument0.y)
    {
        ySwitch = true;
    }
}
else if (argument0 == objPaddleAi)
{
    if (self.y > argument0.y)
    {
        ySwitch = true;
    }
}
*/ //Was causing ball to fall through

if place_meeting(self.x, self.y, argument0) //&& (ySwitch)
{
    if (argument0.x > self.x)
    {
    
        ballDiff = (argument0.x - self.x) / (argument0.sprite_width/2);

        if (argument0 == objPaddleAi)
        {
            ballAngle = ((100*ballDiff)+180);
            //Adjust ball angle angle.
            if (ballAngle >= 255) 
            {
                ballAngle = 255;
            }        
            //Crit Hit - Increase Speed
            if (ballAngle >= 250 && ballAngle <= 270)
            {
                ballCritSpeed = ((ballAngle - 135)/5);
            }

        }
        else if (argument0 == objPaddleP1)
        {
            ballAngle = ((100*ballDiff)+90);
            //Adjust ball angle angle.
            if (ballAngle >= 165) 
            {
                ballAngle = 165;
            }        
            //Crit Hit - Increase Speed
            if (ballAngle >= 160 && ballAngle <= 180)
            {
                ballCritSpeed = ((ballAngle - 45)/5);
            }
        }

        
        return (motion_set(ballAngle, ballSpeed + ballCritSpeed));
    }
    else if (argument0.x < self.x) 
    {
        ballDiff = (self.x - argument0.x) / (argument0.sprite_width/2);
        if (argument0 == objPaddleAi)
        {
            ballAngle = (100*ballDiff)+270;
            //Adjust ball angle angle.
            if (ballAngle >= 345) 
            {
                ballAngle = 345;
            }        
            //Crit Hit - Increase Speed
            
            if (ballAngle >= 335 && ballAngle <= 360)
            {
                ballCritSpeed = ((ballAngle - 225)/5);
            }
        }
        else if (argument0 == objPaddleP1)
        {
            ballAngle = (abs((100*ballDiff)-90));
            //Adjust ball angle angle.
            if (ballAngle <= 15) 
            {
                ballAngle = 15;
            }        
            //Crit Hit - Increase Speed
            
            if (ballAngle >= 0 && ballAngle <= 25)
            {
                ballCritSpeed = ((135 - ballAngle)/5);
            }
        }

        
        return (motion_set(ballAngle, ballSpeed + ballCritSpeed));
    }
    else if (argument0.x == self.x)
    {
        if (argument0 == objPaddleAi)
        {
            return (motion_set(270, ballSpeed));
        }
        else if (argument0 == objPaddleP1)
        {
            return (motion_set(90, ballSpeed));
        }
    }
}
