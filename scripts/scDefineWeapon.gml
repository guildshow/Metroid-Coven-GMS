PreviousWeapon = HoldingWeaponId;
CurrentPrimary = NewPrimary;
HoldingWeaponId = argument0;
WeaponDefined = true;

switch (HoldingWeaponId)
{
// --- Beams ---
    case Weapons.wPowerBeam:  
        _RequiresAmmo(false);
        RateOfFire          = 6;           
        WeaponProjectile    = Weapons.wPowerBeam;
        WeaponAccuracy      = 3;            
        ProjectilesToFire   = 1;            
        ChargerMax          = 100;
        subimage            = 0;
        Heating             = 0;
        Cannon              = 0;   
        break;
    case Weapons.wWaveBeam:
        _RequiresAmmo(false);
        RateOfFire          = 12;           
        WeaponProjectile    = Weapons.wWaveBeam;
        WeaponAccuracy      = 0;            
        ProjectilesToFire   = 1;          
        ChargerMax          = 100;
        subimage            = 0;
        Heating             = 0;
        Cannon              = 1;
        break;
    case Weapons.wPlasmaBeam:
        _RequiresAmmo(false);
        RateOfFire          = 13;           
        WeaponProjectile    = Weapons.wPlasmaBeam;
        WeaponAccuracy      = 2;            
        ProjectilesToFire   = 1;          
        ChargerMax          = 100;
        subimage            = 0;
        Heating             = 10;
        Cannon              = 2;
        break;
    case Weapons.wSpazerBeam:
        _RequiresAmmo(false);
        RateOfFire          = 14;           
        WeaponProjectile    = Weapons.wSpazerBeam;
        WeaponAccuracy      = 0;            
        ProjectilesToFire   = 1;          
        ChargerMax          = 100;
        subimage            = 0;
        Heating             = 0;
        Cannon              = 3;
        break;
    case Weapons.wPulseBeam:
        _RequiresAmmo(false);
        RateOfFire          = 3;           
        WeaponProjectile    = Weapons.wPulseBeam;
        WeaponAccuracy      = 2;            
        ProjectilesToFire   = 1;          
        ChargerMax          = 100;
        subimage            = 0;
        Heating             = 0;
        Cannon              = 4;
        break;
    case Weapons.wIceBeam:
        _RequiresAmmo(false);
        RateOfFire          = 14;           
        WeaponProjectile    = Weapons.wIceBeam;
        WeaponAccuracy      = 5;            
        ProjectilesToFire   = 1;          
        ChargerMax          = 100;
        subimage            = 0;
        Heating             = 0;
        Cannon              = 5;
        break;
    case Weapons.wRuptureBeam:
        _RequiresAmmo(false);
        RateOfFire          = 0;           
        WeaponProjectile    = Weapons.wRuptureBeam;
        WeaponAccuracy      = 3;            
        ProjectilesToFire   = 1;          
        ChargerMax          = 100;
        subimage            = 0;
        Heating             = 0;
        Cannon              = 6;
        break;
    case Weapons.wPhazonBeam:
        _RequiresAmmo(false);
        RateOfFire          = 11;           
        WeaponProjectile    = Weapons.wPhazonBeam;
        WeaponAccuracy      = 1;            
        ProjectilesToFire   = 1;          
        ChargerMax          = 100;
        subimage            = 0;
        Heating             = 0;
        Cannon              = 7;
        break;
// --- Secondary Weapons ---
    case Weapons.wMissileLauncher:
        _RequiresAmmo(true);
        RateOfFire          = 0;             
        WeaponProjectile    = Weapons.wMissileLauncher;
        WeaponAccuracy      = 0;
        ProjectilesToFire   = 1;
        ChargerMax          = 0;
        subimage            = 0;
        Heating             = 0;
        Cannon              = 8;  
        break;
    case Weapons.wSuperMissile:
        _RequiresAmmo(true);
        RateOfFire          = 40;             
        WeaponProjectile    = Weapons.wSuperMissile;
        WeaponAccuracy      = 0;
        ProjectilesToFire   = 1;
        ChargerMax          = 0;
        subimage            = 0;
        Heating             = 0;
        Cannon              = 9;  
        break;
// --- Addons ---
    case Weapons.wBallBomb:
        _RequiresAmmo(false);
        RateOfFire          = 0;           
        WeaponProjectile    = Weapons.wBallBomb;
        WeaponAccuracy      = 0;            
        ProjectilesToFire   = 1;          
        ChargerMax          = 100;
        subimage            = 0;
        Heating             = 0;
        Cannon              = -1;
        break;
    case Weapons.wPowerBomb:
        _RequiresAmmo(true);
        RateOfFire          = 0;           
        WeaponProjectile    = Weapons.wPowerBomb;
        WeaponAccuracy      = 0;            
        ProjectilesToFire   = 1;          
        ChargerMax          = 100;
        subimage            = 0;
        Heating             = 0;
        Cannon              = -1;
        break;

// --- Default ---
// Can be used to unequip a weapon.
    default:
        RateOfFire          = 0;
        WeaponProjectile    = -1;
        ProjectilesToFire   = 0;
        WeaponDefined       = false;
        AmmoAmount          = 0;
        ChargerMax          = 0;
        Heating             = 0;
        Cannon              = 10;
}

if (argument1 = 1) exit; // Set argument1 to 1 if you don't want a switching effect.

// Play contextual weapon-switching sound.
if (argument0 = CurrentUnmorphedSecondary) sound_play(SwitchToSecondary);
else
{
    if (PreviousWeapon = Weapons.wMissileLauncher) sound_play(SwitchFromSecondary);
    else sound_play(SwitchPrimary);
}
// Blink the arm cannon sprite for the weapon-switching effect.
if (instance_exists(oEffect))
{
    with (oEffect)
        { if (sprite_index = sprCannons) instance_destroy(); }
}
flash = instance_create(x,y,oEffect);
flash.sprite_index = sprCannons;
flash.depth = 2;
flash.image_index = Cannon+11;
flash.image_alpha = 1;
flash.image_angle = image_angle;
flash.image_speed = 0;
flash.depth = 6;
// See "oEffect" object for remainder of code.
