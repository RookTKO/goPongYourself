if !instance_exists(objPaddle) && (control.state == state.game_start)
{
    instance_create(100, 700, objPaddle);
}
