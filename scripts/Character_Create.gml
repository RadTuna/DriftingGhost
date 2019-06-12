
// Movement Property
hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
jumpCount = 0;
dashVFactor = 1.2;
dashHFactor = 2.5;
jumpFactor = 7;
global.characterRef = self; // Ref To GameMode_Tick

// Shooting Property
bulletSp = 10;
moX = 0;
moY = 0;
shootCoolDownTime = 1000; // milliSecond
canShoot = true;
MaxMag = 3;
shootCount = MaxMag;
IsMagEmpty = false;
IsReloading = false;

// CharacterState Property
IsDead = false;
live = 3;
liveIndex = 0;
liveLimit = 30; // Sync GameFrame
immotal = false;
hitImmotalTime = 2000; // milliSecond
sprit = 100.0; // Skill Gauge
spritDecreaseFactor = 1.5;
spritIncreaseFactor = 0.8;

// Misc Proterty (Do not Change!!)
dashReleaseCheck = false;
hitDelay = 0;
shootDelay = 0;

// Component Reference
armRef = instance_create(x, y, O_Arm);
leafRef = instance_create(x, y, O_Fxxk);
