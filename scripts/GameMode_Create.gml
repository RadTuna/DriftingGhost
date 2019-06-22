
// GameMode Property
timeInterval = 100;
startTime = current_time
endTime = startTime + timeInterval * 1000;
global.remainingTime = 0;
IsTimeOver = false;
global.gameScore = 0;
global.canNextLevel = false;
nextLevelTime = 0;
nextLevelDelay = 5000; // milliSecocd
fadeSet = false;
nextLevelSet = false;

window_set_cursor(cr_none);

