myid = argument0;
switch (myid)
{
// --- Beams ---
    case Items.iWaveBeam:
        AnimationStart = 0;
        AnimationEnd   = 1;
        StepSpeed      = 3;
        Name = "Wave Beam";
        break;
    case Items.iPlasmaBeam:
        AnimationStart = 2;
        AnimationEnd   = 3;
        StepSpeed      = 3;
        Name = "Plasma Beam";
        break;
    case Items.iSpazerBeam:
        AnimationStart = 4;
        AnimationEnd   = 5;
        StepSpeed      = 3;
        Name = "Spazer Beam";
        break;
    case Items.iPulseBeam:
        AnimationStart = 6;
        AnimationEnd   = 7;
        StepSpeed      = 3;
        Name = "Pulse Beam";
        break;
    case Items.iIceBeam:
        AnimationStart = 8;
        AnimationEnd   = 9;
        StepSpeed      = 3;
        Name = "Ice Beam";
        break;
    case Items.iRuptureBeam:
        AnimationStart = 10;
        AnimationEnd   = 11;
        StepSpeed      = 3;
        Name = "Rupture Beam";
        break;
    case Items.iPhazonBeam:
        AnimationStart = 12;
        AnimationEnd   = 13;
        StepSpeed      = 3;
        Name = "Phazon Beam";
        break;
// --- Secondary Weapons ---
    case Items.iMissileLauncher:
        AnimationStart = 14;
        AnimationEnd   = 15;
        StepSpeed      = 3;
        Name = "Missile Launcher";
        break;
    case Items.iSuperMissile:
        AnimationStart = 16;
        AnimationEnd   = 17;
        StepSpeed      = 3;
        Name = "Super Missile";
        break;
    case Items.iDiffuser:
        AnimationStart = 18;
        AnimationEnd   = 19;
        StepSpeed      = 3;
        Name = "Diffuser";
        break;
// --- Suits ---
    case Items.iVariaSuit:
        AnimationStart = 20;
        AnimationEnd   = 21;
        StepSpeed      = 3;
        Name = "Varia Suit";
        break;
    case Items.iGravitySuit:
        AnimationStart = 22;
        AnimationEnd   = 23;
        StepSpeed      = 3;
        Name = "Gravity Suit";
        break;
    case Items.iCorruptionSuit:
        AnimationStart = 24;
        AnimationEnd   = 25;
        StepSpeed      = 3;
        Name = "Corruption Suit";
        break;
// --- Addons ---
    case Items.iMorphBall:
        AnimationStart = 26;
        AnimationEnd   = 30;
        StepSpeed      = 2;
        AnimationPauseTimer  = 0;
        AnimationPauseAmount = 30;
        Name = "Morph Ball";
        break;
    case Items.iBallBomb:
        AnimationStart = 31;
        AnimationEnd   = 35;
        StepSpeed      = 4;
        AnimationPauseTimer  = 0;
        AnimationPauseAmount = 1;
        Name = "Ball Bomb";
        break;
    case Items.iPowerBomb:
        AnimationStart = 36;
        AnimationEnd   = 37;
        StepSpeed      = 3;
        Name = "Power Bomb";
        break;
    case Items.iSpeedBooster:
        AnimationStart = 40;
        AnimationEnd   = 41;
        StepSpeed      = 3;
        Name = "Speed Booster";
        break;
    case Items.iLightsear:
        AnimationStart = 42;
        AnimationEnd   = 43;
        StepSpeed      = 3;
        Name = "Lightsear";
        break;
// --- Expansions ---
    case Items.iEnergyTank:
        AnimationStart = 52;
        AnimationEnd   = 53;
        StepSpeed      = 3;
        Name = "Energy Tank";
        break;
    case Items.iMissileExpansion:
        AnimationStart = 14;
        AnimationEnd   = 15;
        StepSpeed      = 3;
        Name = "Missile Expansion";
        break;
    case Items.iSuperMissileExpansion:
        AnimationStart = 16;
        AnimationEnd   = 17;
        StepSpeed      = 3;
        Name = "Super Missile Expansion";
        break;
    case Items.iPowerBombExpansion:
        AnimationStart = 36;
        AnimationEnd   = 37;
        StepSpeed      = 3;
        Name = "Power Bomb Expansion";
        break;
// --- Ammo Pickups ---
    case Items.aSMissileAmmo:
        AnimationStart = 56;
        AnimationEnd   = 57;
        StepSpeed      = 2;
        speed = random(2);
        direction = random(360);
        alarm[9] = 900; // 15 seconds until despawn.
        Name = "Small Missile Ammo";
        break;
    case Items.aLMissileAmmo:
        AnimationStart = 58;
        AnimationEnd   = 59;
        StepSpeed      = 2;
        speed = random(2);
        direction = random(360);
        alarm[9] = 1200; // 20 seconds until despawn.
        Name = "Large Missile Ammo";
        break;
    case Items.aSSuperMissileAmmo:
        AnimationStart = 60;
        AnimationEnd   = 61;
        StepSpeed      = 2;
        speed = random(2);
        direction = random(360);
        alarm[9] = 900; // 15 seconds until despawn.
        Name = "Small Super Missile Ammo";
        break;
    case Items.aLSuperMissileAmmo:
        AnimationStart = 62;
        AnimationEnd   = 63;
        StepSpeed      = 2;
        speed = random(2);
        direction = random(360);
        alarm[9] = 1200; // 20 seconds until despawn.
        Name = "Large Super Missile Ammo";
        break;
    case Items.aPowerBombAmmo:
        AnimationStart = 64;
        AnimationEnd   = 65;
        StepSpeed      = 2;
        speed = random(2);
        direction = random(360);
        alarm[9] = 1200; // 20 seconds until despawn.
        Name = "Power Bomb Ammo";
        break;

// --- Health Pickups ---
    case Items.hHealthSmall:
        AnimationStart = 66;
        AnimationEnd   = 69;
        StepSpeed      = 2;
        speed = random(2);
        direction = random(360);
        alarm[9] = 900; // 15 seconds until despawn.
        Name = "Small Health";
        break;
    case Items.hHealthLarge:
        AnimationStart = 70;
        AnimationEnd   = 73;
        StepSpeed      = 2;
        speed = random(2);
        direction = random(360);
        alarm[9] = 1200; // 20 seconds until despawn.
        Name = "Large Health";
        break;
    case Items.hHealthSuper:
        AnimationStart = 74;
        AnimationEnd   = 77;
        StepSpeed      = 2;
        speed = random(2);
        direction = random(360);
        alarm[9] = 1800; // 30 seconds until despawn.
        Name = "Super Health";
        break;
    
    default: 
    // These variables must exist or the items will not initialize.
        AnimationStart  = 0;
        AnimationEnd    = 0;
        StepSpeed       = 0;
        Name = "TEMPLATE";
}
//_ItemGlowLight();
image_single = AnimationStart;
depth = 6;
if (StepSpeed > 0) alarm[0] = StepSpeed; // Delayed "step" event.
                                         // Items with unique animations don't need this.
                                         // See scItemAlarm().
