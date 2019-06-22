
// Movement Property
hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
jumpCount = 0;
dashVFactor = 1.4;
dashHFactor = 2.0;
jumpFactor = 7;
global.characterRef = self; // Ref To GameMode_Tick

// Shooting Property
bulletSp = 10;
moX = 0;
moY = 0;
shootCoolDownTime = 500; // milliSecond
canShoot = true;
MaxMag = 8;
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
spritDecreaseFactor = 1.4;
spritIncreaseFactor = 0.6;

// Misc Proterty (Do not Change!!)
dashReleaseCheck = false;
hitDelay = 0;
shootDelay = 0;

//Fade Function/Property
var inst = instance_create(0, 0, FadeManager);
inst.arg0 = true;
global.canDraw = false;

// Component Reference
armRef = instance_create(x, y, O_Arm);
leafRef = instance_create(x, y, O_Fxxk);
EffectRef = 0;
