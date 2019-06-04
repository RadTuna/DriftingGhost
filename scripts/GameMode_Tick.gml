
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
background_hspeed[1] = 1 * sign(global.hsp) * -1;
background_hspeed[2] = 3 * sign(global.hsp) * -1;


