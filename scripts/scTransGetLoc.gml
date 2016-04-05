// Runs in the create event of the transition objects' parent object.
switch (room) // Check current room.
{
    // Get the position of the transition object in the room.
    case BarriaLandingSite: 
        trans = 1;
        break;
    case BarriaIntWest:
        if (sprite_index = sprTransitionGuideLR)
        {
            if (x < room_width/2) trans = 1;
            else trans = 4;
        }
        else
        {
            if (y < room_height/2) trans = 2;
            else trans = 3;
        }
        break;
}
