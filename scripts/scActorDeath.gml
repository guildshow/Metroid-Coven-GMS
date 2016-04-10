switch (myid)
{
    case Enemies.eZoomer:
        repeat (5)
        {
            with (instance_create(x,y,oDooDad))
            {
                sprite_index = sprZoomerPart;
                depth = other.depth;
                image_angle = random(360);
                image_xscale = 1.5;
                image_yscale = 1.5;
                alarm[0] = 500-max(instance_number(oDooDad),1);
                image_single = floor(random(6));
                speed = 2+random(2);
                friction = .1;
                direction = other.TakeHitDirection+random_range(40,-40);
            }
        }
        with (instance_create(x,y,oDestroyAnim))
            { image_speed = .25; sprite_index = sprZoomerDie; depth = other.depth; }
        scActorLoot();
        sound_play(EnemyZoomerDeath);
        break;
}
