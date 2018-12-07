switch (argument0) 
{
    case 8:
        if instance_exists(ball)
        {
            ball.ballSpeed = global.game_speed/6;
            ball.ballDiff = 0;
            ball.ballAngle = 0;
            ball.ballCritSpeed = 0;
            ball.ballSpeedBump = 0;
            ball.ballDamage = 1;
            ball.ballBlink = false;
            ball.logicbombVar = false;
            ball.sysboostVar = false;
            ball.spam = false;
            ball.hots = false;
        }
        break;
    case 14:
        break;
    case 16:
        break;
    case 18:
        break;
    case 23:
        break;
    case 25:
        break;
}
