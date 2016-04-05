AnimationPauseTimer -= 1;
if (AnimationPauseTimer > 0) image_single = AnimationStart-1;
if (AnimationPauseTimer < -(AnimationEnd-AnimationStart-1)) AnimationPauseTimer = AnimationPauseAmount;
