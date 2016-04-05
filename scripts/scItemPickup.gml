switch (myid)
{
// --- Beams ---
    case Items.iWaveBeam: text = eId.GainWaveBeam; other.HasWaveBeam = true; break;
    case Items.iPlasmaBeam: text = eId.GainPlasmaBeam; other.HasPlasmaBeam = true; break;
    case Items.iSpazerBeam: text = eId.GainSpazerBeam; other.HasSpazerBeam = true; break;
    case Items.iPulseBeam: text = eId.GainPulseBeam; other.HasPulseBeam = true; break;
    case Items.iIceBeam: text = eId.GainIceBeam; other.HasIceBeam = true; break;
    case Items.iRuptureBeam: text = eId.GainRuptureBeam; other.HasRuptureBeam = true; break;
    case Items.iPhazonBeam: text = eId.GainPhazonBeam; other.HasPhazonBeam = true; break;
// --- Secondary Weapons ---
    case Items.iMissileLauncher: text = eId.GainMissileLauncher; other.HasMissileLauncher = true; break;
    case Items.iSuperMissile: text = eId.GainSuperMissile; other.HasSuperMissile = true; break;
    case Items.iDiffuser: text = eId.GainDiffuser; other.HasDiffuser = true; break;
// --- Addons ---
    case Items.iMorphBall: text = eId.GainMorphBall; other.HasMorphBall = true; break;
    case Items.iBallBomb: text = eId.GainBallBomb; other.HasBallBomb = true; break;
    case Items.iPowerBomb: text = eId.GainPowerBomb; other.HasPowerBomb = true; break;
    case Items.iSpeedBooster: text = eId.GainSpeedBooster; other.HasSpeedBooster = true; break;
    case Items.iLightsear: text = eId.GainLightsear; other.HasLightsear = true; break;
// --- Suits ---
    case Items.iVariaSuit: text = eId.GainVariaSuit; with (other) scDefineSuit(Other.sVariaSuit); break;
    case Items.iGravitySuit: text = eId.GainGravitySuit; with (other) scDefineSuit(Other.sGravitySuit); break;
    case Items.iCorruptionSuit: text = eId.GainCorruptionSuit; with (other) scDefineSuit(Other.sCorruptionSuit); break;
// --- Visors ---
    // N/A.
// --- Expansions ---
    case Items.iEnergyTank:
        with (other) // oPlayer.
        {
            other.text = eId.GainEnergyTank; // oItem.
            EnergyTanks += 1;
            FullTanks = EnergyTanks;
            Energy = 100;
        }
        break;
    case Items.iMissileExpansion:
        with (other) // oPlayer.
        {
            other.text = eId.GainMissileExpansion; // oItem.
            scWeaponSetAmmoMax(Weapons.wMissileLauncher,scWeaponGetAmmoMax(Weapons.wMissileLauncher)+5);
            scWeaponSetAmmo(Weapons.wMissileLauncher,scWeaponGetAmmo(Weapons.wMissileLauncher)+5);
            scRegulateAmmo(Weapons.wMissileLauncher);
        }
        break;
    case Items.iSuperMissileExpansion:
        with (other) // oPlayer.
        {
            other.text = eId.GainSuperMissileExpansion; // oItem.
            scWeaponSetAmmoMax(Weapons.wSuperMissile,scWeaponGetAmmoMax(Weapons.wSuperMissile)+3);
            scWeaponSetAmmo(Weapons.wSuperMissile,scWeaponGetAmmo(Weapons.wSuperMissile)+3);
            scRegulateAmmo(Weapons.wSuperMissile);
        }
        break;
    case Items.iPowerBombExpansion:
        with (other) // oPlayer.
        {
            other.text = eId.GainPowerBombExpansion; // oItem.
            scWeaponSetAmmoMax(Weapons.wPowerBomb,scWeaponGetAmmoMax(Weapons.wPowerBomb)+1);
            scWeaponSetAmmo(Weapons.wPowerBomb,scWeaponGetAmmo(Weapons.wPowerBomb)+1);
            scRegulateAmmo(Weapons.wPowerBomb);
        }
        break;
// --- Ammo Pickups ---
    case Items.aSMissileAmmo:
        with (other)
        {
            scWeaponSetAmmo(Weapons.wMissileLauncher,scWeaponGetAmmo(Weapons.wMissileLauncher)+2);
            scRegulateAmmo(Weapons.wMissileLauncher);
        }
        break;
    case Items.aLMissileAmmo:
        with (other)
        {
            scWeaponSetAmmo(Weapons.wMissileLauncher,scWeaponGetAmmo(Weapons.wMissileLauncher)+5);
            scRegulateAmmo(Weapons.wMissileLauncher);
        }
        break;
    case Items.aSSuperMissileAmmo:
        with (other)
        {
            scWeaponSetAmmo(Weapons.wSuperMissile,scWeaponGetAmmo(Weapons.wSuperMissile)+1);
            scRegulateAmmo(Weapons.wSuperMissile);
        }
        break;
    case Items.aLSuperMissileAmmo:
        with (other)
        {
            scWeaponSetAmmo(Weapons.wSuperMissile,scWeaponGetAmmo(Weapons.wSuperMissile)+2);
            scRegulateAmmo(Weapons.wSuperMissile);
        }
        break;
    case Items.aPowerBombAmmo:
        with (other)
        {
            scWeaponSetAmmo(Weapons.wPowerBomb,scWeaponGetAmmo(Weapons.wPowerBomb)+1);
            scRegulateAmmo(Weapons.wPowerBomb);
        }
        break;
// --- Health Pickups ---
    case Items.hHealthSmall:
        with (other) GainEnergy = 5;
        break;
    case Items.hHealthLarge:
        with (other) GainEnergy = 20;
        break;
    case Items.hHealthSuper:
        with (other) GainEnergy = 100;
        break;
}
if (text != 0) with (eId)
{
    Pause();
    fadeStage = 0;
    text = other.text;
    alarm[0] = 5;
}
instance_destroy();
