if (WeaponDistanceOffset != 0)
{
    var irecoil;
    irecoil = 0;
    WeaponXPosition = x+lengthdir_x(WeaponDistanceOffset+irecoil,WeaponDirectionOffset+image_angle);
    WeaponYPosition = y+lengthdir_y(WeaponDistanceOffset+irecoil,WeaponDirectionOffset+image_angle);
}
else 
    { WeaponXPosition = x; WeaponYPosition = y; }
    
if (eId.transitioning) exit; // Leave current hidden area alpha levels alone if we are transitioning.

if (tile_layer_find(-1,x,y))
or (tile_layer_find(-2,x,y))
or (tile_layer_find(-3,x,y))
{
    if (eId.hiddenfade1 > 0)
        { eId.hiddenfade1 -= 0.05; scFadeHiddenArea(-1,eId.hiddenfade1); }
}
else
    { tile_layer_show(-1); tile_layer_show(-2); tile_layer_show(-3); if (eId.hiddenfade1 < 1) eId.hiddenfade1 += 0.1; }//if (eId.hiddenfade1 < 1)
    //{ eId.hiddenfade1 += 0.1; scFadeHiddenArea(-1,eId.hiddenfade1); }
// ===
if (tile_layer_find(-4,x,y))
or (tile_layer_find(-5,x,y))
or (tile_layer_find(-6,x,y))
{
    if (eId.hiddenfade2 > 0)
        { eId.hiddenfade2 -= 0.05; scFadeHiddenArea(-4,eId.hiddenfade2); }
}
else 
    { tile_layer_show(-4); tile_layer_show(-5); tile_layer_show(-6); if (eId.hiddenfade1 < 1) eId.hiddenfade2 += 0.1; }//if (eId.hiddenfade2 < 1)
    //{ eId.hiddenfade2 += 0.1; scFadeHiddenArea(-4,eId.hiddenfade2); }
// ===
if (tile_layer_find(-7,x,y))
or (tile_layer_find(-8,x,y))
or (tile_layer_find(-9,x,y))
{
    if (eId.hiddenfade3 > 0)
        { eId.hiddenfade3 -= 0.05; scFadeHiddenArea(-7,eId.hiddenfade3); }
}
else 
    { tile_layer_show(-7); tile_layer_show(-8); tile_layer_show(-9); if (eId.hiddenfade1 < 1) eId.hiddenfade3 += 0.1; }//if (eId.hiddenfade3 < 1)
    //{ eId.hiddenfade3 += 0.1; scFadeHiddenArea(-7,eId.hiddenfade3); }
// ===
if (tile_layer_find(-10,x,y))
or (tile_layer_find(-11,x,y))
or (tile_layer_find(-12,x,y))
{
    if (eId.hiddenfade4 > 0)
        { eId.hiddenfade4 -= 0.05; scFadeHiddenArea(-10,eId.hiddenfade4); }
}
else 
    { tile_layer_show(-10); tile_layer_show(-11); tile_layer_show(-12); if (eId.hiddenfade1 < 1) eId.hiddenfade4 += 0.1; }//if (eId.hiddenfade4 < 1)
    //{ eId.hiddenfade4 += 0.1; scFadeHiddenArea(-10,eId.hiddenfade4); }
