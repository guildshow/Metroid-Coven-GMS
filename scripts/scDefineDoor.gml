myid = argument0;

switch (object_index)
{
    case oDoorGuideW:
        rot = 0;
        mask_index = sprDoorMaskW;
        //origx = x;
        //origy = y-sprite_height/2-4;
        //vector_path_add(oVectorLine,WDoorPath,origx,origy,0);
        break;
    case oDoorGuideE:
        rot = 180;
        mask_index = sprDoorMaskE;
        break;
    case oDoorGuideN:
        rot = 270;
        mask_index = sprDoorMaskN;
        break;
    case oDoorGuideS:
        rot = 90;
        mask_index = sprDoorMaskS;
        break;
}

switch (myid)
{
    case Doors.dBlue: sprite = sprDoorBlue; break;
    case Doors.dRed:
        en = 3;
        sprite = sprDoorRed;
        break;
    case Doors.dGreen: sprite = sprDoorGreen; break;
    case Doors.dYellow: sprite = sprDoorYellow; break;
}
