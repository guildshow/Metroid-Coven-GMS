scTransition();

// Only use the in-game pause if a message is not currently in use/being displayed.
if (keyboard_check_pressed(vk_enter))
or (keyboard_check_pressed(vk_return))
{
    if (fadeStage = -1)
        { Pause(); exit; }
}
if (keyboard_check_pressed(vk_escape))
{
    if (fadeStage = -1)
    {
        Pause();
        fadeStage = 0;
        text = Exit;
        alarm[0] = 5;
        exit;
    }
}
switch (fadeStage) 
{
    case 0: // Fade background in.
        if (alpha1 < 0.6) alpha1 += 0.03;
        if( alpha1 = 0.6) fadeStage = 1;
        break;
    case 1: // Show message and fade text in.
        if (alpha2 < 0.95) alpha2 += 0.05;
        if (alpha2 = 0.95) complete = true;
        break;
    case 2: // Fade text out.
        if (alpha2 > 0) alpha2 -= 0.05;
        if (alpha2 <= 0) fadestage = 3;
    case 3: // Fade background out.
        if (alpha1 > 0) alpha1 -= 0.03;
        if (alpha1 <= 0)
        {
            Pause();
            eId.pausedelay = 10;
            fadeStage = -1;
            text = 0;
            alpha1 = 0;
            alpha2 = 0;
        }
        break;
}
if (fadeStage > -1)
{
    if (!complete)
    {
        alpha1 = 0.6;
        fadeStage = 1;
        canEnter = false;
        alarm[0] = 5;
        exit;
    }
    if (text = Exit)
    {
        if (mouse_check_button_pressed(mb_left))
        or (mouse_check_button_pressed(mb_right))
        or (keyboard_check_pressed(vk_space))
        or (keyboard_check_pressed(vk_enter))
        or (keyboard_check_pressed(vk_return))
        or (keyboard_check_pressed(ord("Y")))
            { game_end(); }
        if (keyboard_check_pressed(vk_escape))
        or (keyboard_check_pressed(ord("N")))
        {
            fadeStage = 2;
            canEnter = false;
            exit;
        }
    }
    if (mouse_check_button_pressed(mb_left))
    or (mouse_check_button_pressed(mb_right))
    or (keyboard_check_pressed(vk_space))
    or (keyboard_check_pressed(vk_enter))
    or (keyboard_check_pressed(vk_return))
    or (keyboard_check_pressed(vk_escape))
    {
        fadeStage = 2;
        canEnter = false;
    }
}
