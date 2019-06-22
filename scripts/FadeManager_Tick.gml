
isReverse = arg0;

if (!isReverse)
{
    var fader = fadeFactor;
}
else
{
    var fader = fadeFactor * -1;
}

if (isReverse) && (!justOne)
{
    fadeInst.image_alpha = 1;
    justOne = true;
}

fadeInst.image_alpha = clamp(fadeInst.image_alpha + fader, 0, 1);

if (!isReverse) && (fadeInst.image_alpha >= 0.7)
{
    global.canDraw = false;
}
if (isReverse) && (fadeInst.image_alpha <= 0.3)
{
    global.canDraw = true;
}

if (fadeInst.image_alpha == 1.0)
{
    instance_destroy(fadeInst, true);
    instance_destroy(self, true);
    global.canDraw = false;
}
else if (fadeInst.image_alpha == 0.0)
{
    instance_destroy(fadeInst, true);
    instance_destroy(self, true);
    global.canDraw = true;
}
