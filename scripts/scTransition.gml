switch (transstep)
{
    // --- Part 1 ---
    // Fade to black.
    case 0:
        if (transfade < 1) transfade += transfaderate;
        if (transfade = 1) transstep = 1;
        break;
    // Buffer a bit before moving to the transition room.
    case 1:
        if (transbuffer < transbuffermax) transbuffer += 1;
        if (transbuffer = transbuffermax) 
            { transstep = 2; room_goto(TransitionRoom); }
        break;
    // Move the transition object.
    case 2:
        switch (transdir)
        {
            case 0: // Player will face East when exiting the transition.
                if (tx > 0) tx -= transrate;
                if (tx <= 0)
                    { tx = 0; transstep = 3; }
                break;
            case 90: // North.
                if (ty < 640) ty += transrate;
                if (ty >= 640)
                    { ty = 640; transstep = 3; }
                break;
            case 180: // West.
                if (tx < 640) tx += transrate;
                if (tx >= 640)
                    { tx = 640; transstep = 3; }
                break;
            case 270: // South.
                if (ty > 0) ty -= transrate;
                if (ty <= 0)
                    { ty = 0; transstep = 3; }
                break;
        }
        break;
    case 3:
        room_goto(destinationroom);
        transstep = 4;
        break;
    case 4:
        scTransIn();
        if (transfade > 0) transfade -= transfaderate;
        if (transfade = 0) 
            { transitioning = false; transstep = -1; }
        break;
}
