if (!instance_exists(objWall))
{
    for(var i = 0; i < 2; i++)
    {
        var j = instance_create((((room_width/2)+32)-(i*16)), 400, objWall);
    }
}
