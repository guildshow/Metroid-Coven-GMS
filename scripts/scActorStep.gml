if (HitPoints <= 0) instance_destroy();
// Temporary.
image_angle = direction;
friction = .1;
// Temporary.

if (ImmuneToPowerBomb > 0) ImmuneToPowerBomb -= 1;

switch(myid)
{
    case Enemies.eZoomer:
        if (x = xprevious) && (y = yprevious) image_speed = 0;
        else image_speed = speed/MaxSpeed;
        if (sprite_index = ActorSpriteHit) && (alarm[0] = 0) sprite_index = ActorSprite;
        if (alarm[1] = 0)
        {
            destdir = random(360);
            speed = MaxSpeed;
            if (instance_exists(oPlayer))
            {
                if (point_distance(x,y,oPlayer.x,oPlayer.y) < 150)
                {
                    direction = point_direction(x,y,oPlayer.x,oPlayer.y)+random_range(-100,100)
                    speed = MaxSpeed;
                }
            }
            alarm[1] = 100+round(random(200));
        }
        if (direction < destdir+5) direction += 5
        if (direction > destdir-5) direction -= 5
        
        if (HitPoints != aiLastHitPoints)
        {
            direction = random(360);
            speed = MaxSpeed;
            aiLastHitPoints = HitPoints;
            sprite_index = ActorSpriteHit;
            alarm[0] = 5;
            alarm[1] = 10;
            sound_play(EnemyZoomerHit);
            repeat (round(random(4))+2)
            {
                with (instance_create(x,y,oDestroyAnim))
                {
                    sprite_index = sprZoomerBlood;
                    image_angle = random(360);
                    image_speed = .25
                    friction = .1;
                    direction = other.TakeHitDirection+random_range(20,-20);
                    speed = 4;
                }
            }
        }
    break;
}
