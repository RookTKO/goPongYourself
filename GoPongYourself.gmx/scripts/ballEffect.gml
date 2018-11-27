///ballEffect(cardID)
var originalBall = ball;
switch (argument0) 
{
    case 2:
        if instance_exists(ball)
        {
            ballDamage+= 1;
        }
        break;
    case 3 :
        if instance_exists(ball)
        {
            originalBall.image_xscale = 0.8;
            originalBall.image_yscale = 0.8;
            randomize();
            var luckySe7en = irandom_range(2, 7);
            while (instance_number(ball) < luckySe7en)
            {
                var j = instance_create(originalBall.x, originalBall.y, ball);
                j.image_xscale = originalBall.image_xscale;
                j.image_yscale = originalBall.image_yscale;
                j.ballSpeed = originalBall.ballSpeed;
                j.ballDamage = originalBall.ballDamage;
                j.direction = choose(45, 90, 135, 225, 315, 270);
            }

        }
        break;
    case 4:
        if instance_exists(ball)
        {
            while (instance_number(ball) < 3)
            {
            var j = instance_number(ball);
            randomize();
            var i = instance_create(originalBall.x + random(50)*j, originalBall.y + random(50)*j , ball);
            i.ballBlink = true;
            i.ballDamage = 0;
            i.direction = originalBall.direction;
            with i
                {
                    if place_meeting(x, y, ball)
                    {
                        instance_destroy();
                    }
                }

            }
        }
        break;
    case 28 :
        if instance_exists(ball)
        {
        with ball
        {
        ballSpeed = 20;
        }
        }
        break;
    case 31 :
        instance_create(x, y, ball);
        break;
}
