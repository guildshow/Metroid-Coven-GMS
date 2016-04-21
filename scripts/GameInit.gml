////////////////////////////////////////////////
//                                            //
//  Create event of eId (master controller).  //
//                                            //
////////////////////////////////////////////////

// Initialize general eId variables.
scEIDMasterList(); // Init the enums for all IDs in the game.
scEIDMessagesInit(); // Init the various messages of the game.
debugmode = 0; // In-game debugmode toggle.
allitemsgiven = 0; // determines if all items have been given to the player via debugmode.
region = 0; // Determines what region we are in.
fullscreen = 0; // Determines whether the game is in fullscreen or not.

// Initialize pause and message stuff.
sPause = noone; // The background sprite that draws when paused
paused = 0; // Is the game paused?
pausedelay = 0; // Time between being allowed to pause.
alpha1 = 0; // Used for drawing the darkening background.
alpha2 = 0; // ^
fadeStage = -1; // How far along we are in printing a message.
complete = false; // Is the message done fading in?
canEnter = false; // Can we press a key to advance the message?
text = 0; // The text we are printing (see the scEIDMessagesInit() script.
scan = 0; // Scan variant.

// Initialize light and hidden area variables.
hiddenfade1 = 0; // Fades lights in and out in hidden areas on layers -1 through -3.
hiddenfade2 = 0; // ^ -4 through -6.
hiddenfade3 = 0; // ^ -7 through -9.
hiddenfade4 = 0; // ^ -10 through -12.
brightness = 1; // Universal setting for the radius of all lights in the game.
                // Takes the base size of any light and multiplies by this number.

// Initialize player variables.
visor = 0; // 0 = Combat, 1 = Scan.
xrayon = false; // X-Ray Visor toggle.

// Initialize transition stuff.
transitioning = false;
thisroom = -1;
destinationroom = -1;
tx = 0; // Location of the transitioning object that the player collides with.
ty = 0; // ^
tdx = 0; // Distance between the player and the transitioning object (t-object).
tdy = 0; // ^
transfade = 0; // When > 0, uses this number as an alpha to fade out the screen.
transfaderate = 0.025; // The rate at which the screen fades out during a transition.
transdone = false; // Checks if the transition is finished.
transstep = -1; // Current stage of the transition
transbuffer = 0; // Delay counter for transitions before continuing.
transbuffermax = 10; // Length of delay for transitions before continuing to next step.
transdir = 0; // Direction we move the t-object once were in the transition room.
transrate = 10; // Rate at which t-objects move across the screen during a transition.
tsx = 0; // Location to place player after a transition is done.
tsy = 0; // ^
vox = 0; // Amount we need to adjust the t-object before moving it across the view.
voy = 0; // ^

// Initialize items.
// --- Beams ---
HasPowerBeam = true;
HasWaveBeam = false;
HasPlasmaBeam = false;
HasSpazerBeam = false;
HasPulseBeam = false;
HasIceBeam = false;
HasRuptureBeam = false;
HasPhazonBeam = false;
// --- Secondary Weapons ---
HasMissileLauncher = false;
HasSuperMissile = false;
HasDiffuser = false;
// --- Addons ---
HasArmCannon = true;
HasMorphBall = false;
HasBallBomb = false;
HasPowerBomb = false;
HasSpeedBooster = false;
HasLightsear = false;
// --- Suits ---
HasPowerSuit = true;
HasVariaSuit = false;
HasGravitySuit = false;
HasCorruptionSuit = false;
// --- Visors ---
HasCombatVisor = true;
HasScanVisor = true;
HasXRayVisor = false;
scDefineExpansions(); // Initialize expansions to prevent re-acquisitions.

// Initialize miscellaneous stuff.
scDefineNBDoor(); // Initialize non-blue doors to prevent re-opening.
window_set_cursor(cr_none); // Hide the mouse cursor because we use our own.
sound_global_volume(1); // Master volume control.
