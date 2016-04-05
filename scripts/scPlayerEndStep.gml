if (WeaponDistanceOffset != 0)
{
    var irecoil;
    irecoil = 0;
    WeaponXPosition = x+lengthdir_x(WeaponDistanceOffset+irecoil,WeaponDirectionOffset+image_angle);
    WeaponYPosition = y+lengthdir_y(WeaponDistanceOffset+irecoil,WeaponDirectionOffset+image_angle);
}
else 
    { WeaponXPosition = x; WeaponYPosition = y; }
    
if (eId.transitioning) exit;

eId.reveal = false;
if (collision_point(x,y,oHideMap,true,true))
{
   eId.reveal = true;
   if (eId.hiddenfade < 0) eId.hiddenfade = 0;
   eId.hiddenfade += .05;
   if (eId.hiddenfade > 1) eId.hiddenfade = 1;
}
else
{
   if (eId.hiddenfade > 1) eId.hiddenfade = 1;
   eId.hiddenfade -= .05;
   if (eId.hiddenfade < 0) eId.hiddenfade = 0;
}

if (eId.xrayon = true)
{
   if (eId.hiddenfade2 < 0) eId.hiddenfade2 = 0;
   eId.hiddenfade2 += .05;
   if (eId.hiddenfade2 > 1) eId.hiddenfade2 = 1;
}
else
{
   if (eId.hiddenfade2 > 1) eId.hiddenfade2 = 1;
   eId.hiddenfade2 -= .05;
   if (eId.hiddenfade2 < 0) eId.hiddenfade2 = 0;
}

scRevealCircle(x,y,eId.range*2,eId.hiddenfade);
scRevealCircle(x,y,eId.range*10,.5*eId.hiddenfade);
