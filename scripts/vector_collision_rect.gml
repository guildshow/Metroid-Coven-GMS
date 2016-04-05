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
    while collision_rectangle(pointx_1,pointy_1,pointx_2,pointy_2,other.argument2,1,1)
    {
    var dir;
    dir=point_direction(pointx_1+sprite_width/2,pointy_1+sprite_height/2,other.argument2.x,other.argument2.y)
    other.argument2.x+=lengthdir_x(.1,dir);other.argument2.y+=lengthdir_y(.1,dir);
    }
}
