if (!Overheated) and (!pulsechargeshot)
{
    if (KeyPowerBeam) NewPrimary = Weapons.wPowerBeam;
    if (KeyWaveBeam) && (HasWaveBeam) NewPrimary = Weapons.wWaveBeam;
    if (KeyPlasmaBeam) && (HasPlasmaBeam) NewPrimary = Weapons.wPlasmaBeam;
    if (KeySpazerBeam) && (HasSpazerBeam) NewPrimary = Weapons.wSpazerBeam;
    if (KeyPulseBeam) && (HasPulseBeam) NewPrimary = Weapons.wPulseBeam;
    if (KeyIceBeam) && (HasIceBeam) NewPrimary = Weapons.wIceBeam;
    if (KeyRuptureBeam) && (HasRuptureBeam) NewPrimary = Weapons.wRuptureBeam;
    if (KeyPhazonBeam) && (HasPhazonBeam) NewPrimary = Weapons.wPhazonBeam;
}
if (KeySecondarySwitch) and (!MorphBall)
{
    if (CurrentUnmorphedSecondary = Weapons.wMissileLauncher) and (HasSuperMissile) CurrentUnmorphedSecondary = Weapons.wSuperMissile;
    else CurrentUnmorphedSecondary = Weapons.wMissileLauncher;
}
if (Overheated) or (pulsechargeshot) exit;
if (!MorphBall)
{
    if (KeySecondaryHeld) and (HasMissileLauncher)
    {
        if (!JustSwitched)
            { JustSwitched = 1; scDefineWeapon(CurrentUnmorphedSecondary,0); }
        else scDefineWeapon(CurrentUnmorphedSecondary,1);
    }
    else
    {
        if (NewPrimary != CurrentPrimary) scDefineWeapon(NewPrimary,0);
    }
}
if (!KeySecondaryHeld) && (HasMissileLauncher) && (HoldingWeaponId != CurrentPrimary)
{
    JustSwitched = 0;
    scDefineWeapon(CurrentPrimary,0);
}
