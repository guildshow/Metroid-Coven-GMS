// WARNING: BUGGY

/*
**  usage:
**      vector_collision_square(circle,radius,id);
**
**  given:
**      square  vector square object
**      radius  radius of the square
**      id      id of instance that is calling the collision checking
**
**  returns:
**      Nothing.
**
**  RamboFox of GMLscripts.com
*/
with (argument0)
{
    //while collision_circle(pointx_1,pointy_1,other.argument1,other.argument2,1,1)
    while collision_rectangle(pointx_1-other.argument1,pointy_1-other.argument1,pointx_1+other.argument1,pointy_1+other.argument1,other.argument2,1,1)
    {
    var dir;
    dir=point_direction(pointx_1,pointy_1,other.argument2.x,other.argument2.y)
    other.argument2.x+=lengthdir_x(.1,dir);other.argument2.y+=lengthdir_y(.1,dir);
    }
}
