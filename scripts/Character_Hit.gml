// Hit Character : Decrease Live

if (IsDead)
{
    return 0;
}

if (hitDelay > current_time)
{
    return 0;
}

image_alpha = 1;
hitDelay = 0;
immotal = false;
if (instance_position(x, y, S_Enemy))
{
    global.gameScore = 0;
    live -= 1;
    image_alpha = 0.5;
    if (live <= 0)
    {
        live = 0;
        image_alpha = 0;
        IsDead = true;
    }
    immotal = true;
    hitDelay = current_time + hitImmotalTime;
}