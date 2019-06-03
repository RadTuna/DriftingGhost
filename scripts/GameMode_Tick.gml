
if (current_second >= endTime)
{
    IsTimeOver = true;
}

global.remainingTime = timeInterval - (current_second - startTime);
if (global.remainingTime < 0)
{
    global.remainingTime = 0;
}


