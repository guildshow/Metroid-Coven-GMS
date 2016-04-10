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
reveal = false; // Used to tell all lights in the game whether or not to reveal hidden areas in oHideMap.
hiddenfade = 0; // For cleanly fading lights in and out in hidden areas.
hiddenfade2 = 0; // ^
range = 20; // Universal setting for the radius of all lights in the game.

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
transbuffermax = 15; // Length of delay for transitions before continuing to next step.
transdir = 0; // Direction we move the t-object once were in the transition room.
transrate = 8; // Rate at which t-objects move across the screen during a transition.
tsx = 0; // Location to place player after a transition is done.
tsy = 0; // ^
vox = 0; // Amount we need to adjust the t-object before moving it across the view.
voy = 0; // ^

// Initialize miscellaneous stuff.
window_set_cursor(cr_none); // Hide the mouse cursor because we use our own.
sound_global_volume(1); // Master volume control.
