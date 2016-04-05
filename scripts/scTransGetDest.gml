// Runs within oPlayer/scTransOut.
if (other.object_index = oTransitionTubeLR)
{
    if (x < other.x) eId.transdir = 0;
    else eId.transdir = 180;
}
if (other.object_index = oTransitionTubeUD)
{
    if (y < other.y) eId.transdir = 270;
    else eId.transdir = 90;
}

switch (room) // Determine current room.
{
    case BarriaLandingSite: // Only one destination that applies in this room.
        // Determine the destination room.
        eId.destinationroom = BarriaIntWest;
        break;
    case BarriaIntWest:
        if (other.trans = 1) eId.destinationroom = BarriaLandingSite;
        break;
}
