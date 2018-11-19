///paddleCreation(x, y, paddleType)

if !instance_exists(argument2) && (control.state == state.game_start)
{
    instance_create(argument0, argument1, argument2);
}
