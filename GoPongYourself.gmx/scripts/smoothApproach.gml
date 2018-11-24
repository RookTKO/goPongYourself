///smooth_approach(current, target, speed[0-1])
var diff = argument1-argument0;
if abs(diff) < 0.0005
{
   return argument1;
}
else 
{
   return argument0+sign(diff)*abs(diff)*argument2;
}
