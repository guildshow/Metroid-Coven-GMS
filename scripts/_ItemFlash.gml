// _ItemFlash(maxbrightness,flashspeed);

if (FlashTimer = 0) FlashDir = 1; // Increase flash image_alpha once the flash is fully faded out.
if (FlashTimer = argument0) FlashDir = 0; // Decrease flash image_alpha once the flash is as bright as possible.

if (FlashDir = 1) FlashTimer += argument1;
else FlashTimer -= argument1;
