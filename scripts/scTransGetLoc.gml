// Runs in the create event of the transition objects' parent object.
switch (room) // Check current room.
{
    // Get the position of the transition object in the room.
    case BarriaLandingSite: 
        trans = 1;
        break;
    case BarriaIntWest:
        if (x = 0) trans = 1;
        if (y = 0) trans = 2;
        break;
}
