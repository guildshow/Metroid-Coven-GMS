/*
**  usage:
**      vector_collision_circle(circle,id,bounce);
**
**  given:
**      circle  vector circle object
**      id      id of instance that is calling the collision checking
**      bounce  whether or not to bounce (real) "true" or "false" (1 or 0)
**
**  returns:
**      Nothing.
**
**  RamboFox of GMLscripts.com
*/
with (argument0)
{
    while collision_circle(pointx_1,pointy_1,rad,other.argument1,1,1)
    {
    var dir;
    dir=point_direction(pointx_1,pointy_1,other.argument1.x,other.argument1.y);
    other.argument1.x+=lengthdir_x(.1,dir);other.argument1.y+=lengthdir_y(.1,dir);
    if other.argument2
    {other.argument1.direction+=-((((((other.argument1.direction-(dir+90)) mod 360) + 540) mod 360)-180)*2)}
    }
}
