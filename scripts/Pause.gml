/*
Takes an image of the screen, then deactivates all instances,
except controllers. The image must then be drawn, most likely
by a controller.
*/
if (eId.paused = 0) then
{
    if (!sprite_exists(eId.sPause)) then
    {
        // Create an image from the screen.
        // The following line is temporary. Eventually, we need to create a better, more flexible
        //   system that uses a variable to freeze things, like we do with transitions.
        eId.sPause = sprite_from_screen(0,0,view_wview[0],view_hview[0],false,false,0,0);
        if (instance_exists(oWeatherSnow))
        {
            instance_activate_object(oWeatherSnow);
            with (oWeatherSnow)
            {
                part_system_automatic_update(system1,false);
                part_system_automatic_update(system2,false);
                part_system_automatic_update(system3,false);
                part_system_automatic_draw(system1,false);
                part_system_automatic_draw(system2,false);
                part_system_automatic_draw(system3,false);
            }
        }
        // Deactivate all instances to prevent them from moving around.
        instance_deactivate_all(true);
        // If you have any controllers that shouldn't be deactivated, reactivate them here.
        instance_activate_object(eId);
        instance_activate_object(oLE);
        instance_activate_object(oLight);
        eId.paused += 0.025;
        exit;
    }
}
if (eId.paused = .2)
{
    /*
    Unpauses the game by activating all instances and deleting
    the sPause sprite.
    */
    instance_activate_all();
    if (instance_exists(oWeatherSnow))
    {
        with (oWeatherSnow)
        {
            part_system_automatic_update(system1,true);
            part_system_automatic_update(system2,true);
            part_system_automatic_update(system3,true);
            part_system_automatic_draw(system1,true);
            part_system_automatic_draw(system2,true);
            part_system_automatic_draw(system3,true);
        }
    }
    eId.paused = 0;
    if (sprite_exists(eId.sPause)) sprite_delete(eId.sPause);
}
