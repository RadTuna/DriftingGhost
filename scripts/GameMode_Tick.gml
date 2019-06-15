
// TimeOver Timer
if (current_time >= endTime)
{
    IsTimeOver = true;
}

global.remainingTime = round(timeInterval - ((current_time / 1000) - (startTime / 1000)));
if (global.remainingTime < 0)
{
    global.remainingTime = 0;
}

// Background Scroll
var directionCheck = false;
if (global.characterRef.x <= view_xview[0] + view_hborder[0]) && (sign(global.characterRef.hsp) == -1)
{
    directionCheck = true;
}
if (global.characterRef.x >= view_xview[0] - view_hborder[0] + view_wview[0]) && (sign(global.characterRef.hsp) == 1)
{
    directionCheck = true;
}

if (directionCheck)
{
    background_hspeed[1] = 1 * sign(global.characterRef.hsp) * -1;
    background_hspeed[2] = 1 * sign(global.characterRef.hsp) * -1;
    background_hspeed[3] = 2 * sign(global.characterRef.hsp) * -1;
    background_hspeed[4] = 3 * sign(global.characterRef.hsp) * -1;
}
else
{
    background_hspeed[1] = 0;
    background_hspeed[2] = 0;
    background_hspeed[3] = 0;
    background_hspeed[4] = 0;
}

