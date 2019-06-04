
// Movement Property
hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
jumpCount = 0;
dashVFactor = 1.2;
dashHFactor = 2.5;
jumpFactor = 7;
global.hsp = hsp; // Ref To GameMode_Tick

// Shooting Property
bulletSp = 10;
moX = 0;
moY = 0;
shootCoolDownTime = 2000; // milliSecond
canShoot = true;
shootCount = 0;
IsMagEmpty = false;

// CharacterState Property
IsDead = false;
live = 3;
immotal = false;
hitImmotalTime = 2000; // milliSecond
sprit = 100.0; // Skill Gauge
spritDecreaseFactor = 1.5;
spritIncreaseFactor = 0.8;

// Misc Proterty (Do not Change!!)
dashReleaseCheck = false;
hitDelay = 0;
shootDelay = 0;
