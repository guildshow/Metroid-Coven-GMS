if (room = TransitionRoom) exit; // Keep region the same in transition rooms.
switch (room)
{
    // Barria Tundra: 1.
    case BarriaLandingSite:
    case BarriaIntWest:
    case BarriaIceTunnelN:
    case BarriaCacheMorphBall:
    case BarriaCacheMissile:
        region = 1; break;
    default: region = 0; break;
}
