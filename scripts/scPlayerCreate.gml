// --- Basic initialization variables ---
if (!instance_exists(oCannon)) instance_create(x,y,oCannon);

scPlayerStartValues();

AnimationStart = 0;
AnimationEnd = 0;
BallAnimationStart = 0;
BallAnimationEnd = 0;
BallAnimationLimit = 2;
AnimationTimer = 0;
MorphBall = false;
Dodge = 0;
DodgeCooldown = 0;

TakeHitDirection = -1;
CanTakeHit = true;

friction = .2; // Change friction for different surfaces.
MaxSpeed = -1;
MaxBallSpeed = -1;
SpeedInterval = 5;
OnIce = false;

Suit = -1;
scDefineSuit(Other.sPowerSuit);

stepx = x;
stepy = y;

mdirection = 0; // Current move direction.
mhspeed = 0; // Current horizontal move speed.
mvspeed = 0; // Current vertical move speed.
morphgo = true; // Tells whether the player is ready to enter or exit Morph Ball mode.
moving = false; // Tells if the player is moving.
moving_direction = 0; // Tells the player's destination moving direction.
moving_direction_previous = 0; // Tells the player's previous moving direction.
mspeed = 0; // Current move speed.

// --- Weapon variables and handling ---
CurrentPrimary = Weapons.wPowerBeam;
NewPrimary = Weapons.wPowerBeam;
CurrentUnmorphedSecondary = Weapons.wMissileLauncher;
CurrentMorphedSecondary = Weapons.wPowerBomb;
Cannon = 0;
PreviousWeapon = 0;
HoldingWeaponId = CurrentPrimary;
JustSwitched = 0;

pulseshot = 0;
pulsechargeshot = 0;
pulsechargefiring = 0;

ExistingBombs = 0;
ExistingPowerBombs = 0;

WeaponDirectionOffset = 270;
WeaponDistanceOffset = 6;
WeaponAim = 0;
WeaponXPosition = 0;
WeaponYPosition = 0;

ChargeObject = noone;

scDefineWeapon(CurrentPrimary,1);

// --- Lights ---
// Flashlight...
torchSlave = instance_create(x,y,oLight);
torchSlave.master = id;
torchSlave.hideable = false;
torchSlave.LightSprite = sprLightTorch;
torchSlave.HasLight = .4;
torchSlave.AmbLightSprite = sprLightTorch;
torchSlave.HasAmbient = .2;
torchSlave.MyDestScale = 1;
torchSlave.image_yscale = 1.4;
torchSlave.AmIOn = false;
torchSlave.WasOn = false;

// Suit glow...
suitSlave = instance_create(x,y,oLight);
suitSlave.master = id;
suitSlave.hideable = false;
suitSlave.LightSprite = sprLightEffect;
suitSlave.HasLight = 1;
suitSlave.AmbLightSprite = sprLightEffect;
suitSlave.HasAmbient = .5;
suitSlave.MyDestScale = 1;
suitSlave.image_xscale = .5;
suitSlave.image_yscale = .5;

// --- Controls ---
KeyUp                = keyboard_check(ord("W"));
KeyLeft              = keyboard_check(ord("A"));
KeyDown              = keyboard_check(ord("S"));
KeyRight             = keyboard_check(ord("D"));

KeyPowerBeam         = keyboard_check_pressed(ord("1"));
KeyWaveBeam          = keyboard_check_pressed(ord("2"));
KeyPlasmaBeam        = keyboard_check_pressed(ord("3"));
KeySpazerBeam        = keyboard_check_pressed(ord("4"));
KeyPulseBeam         = keyboard_check_pressed(ord("5"));
KeyIceBeam           = keyboard_check_pressed(ord("6"));
KeyRuptureBeam       = keyboard_check_pressed(ord("7"));
KeyPhazonBeam        = keyboard_check_pressed(ord("8"));

KeySecondaryHeld     = keyboard_check(vk_shift);
KeySecondaryReleased = keyboard_check_released(vk_shift);
KeySecondarySwitch   = keyboard_check_pressed(vk_control);
KeyMorph             = keyboard_check_pressed(ord("Z"));
KeyVisor             = keyboard_check_pressed(ord("X"));

KeyFireNormal        = mouse_check_button(mb_left);
KeyFireClickSpeed    = mouse_check_button_pressed(mb_left);
KeyFireReleased      = mouse_check_button_released(mb_left);

KeyChargeUp          = mouse_check_button(mb_right);
KeyChargePressed     = mouse_check_button_pressed(mb_right);
KeyChargeRelease     = mouse_check_button_released(mb_right);

// --- Under Review ---
KeyDodge             = keyboard_check_pressed(vk_space);
KeyDodgeHold         = keyboard_check(vk_space);
KeyTorch             = keyboard_check_pressed(ord("F"));
