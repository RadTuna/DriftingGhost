
if (IsDead)
{
    return 0;
}

key_left = keyboard_check(ord('A'));
key_right = keyboard_check(ord('D'));
key_jump = keyboard_check_pressed(ord('W')) || keyboard_check_pressed(vk_space);
key_dash = keyboard_check(vk_shift);
key_dashReleased = keyboard_check_released(vk_shift);

var move = key_right - key_left;

hsp = move * walksp;
global.hsp = hsp;

vsp = vsp + grv;

if (key_dashReleased)
{
    dashReleaseCheck = false;
}

if (key_dash) && (sprit > 0.0) && (!dashReleaseCheck)
{
    hsp = hsp * dashHFactor;
    sprit -= spritDecreaseFactor;
    if (sprit < 0.5)
    {
        sprit = 0.0;
        dashReleaseCheck = true;
    }
}
else
{
    sprit += spritIncreaseFactor;
    if (sprit > 100.0)
    {
        sprit = 100.0;
    }
}

// (place_meeting(x, y + 1 , O_Block))
if (key_jump) && (jumpCount < 2)
{ 
    vsp = -1 * jumpFactor;
    if (key_dash)
    {
        vsp = -1 * jumpFactor * dashVFactor;
    }

    jumpCount += 1;
}

if (place_meeting(x + hsp, y, O_Block))
{
    while (!place_meeting(x + sign(hsp), y, O_Block))
    {
        x = x + sign(hsp)
    }
    hsp = 0;
}
x = x + hsp;

if (place_meeting(x, y+vsp, O_Block))
{
    while(!place_meeting(x, y + sign(vsp), O_Block))
        {
            y = y + sign(vsp);
        }
        if (sign(vsp) > 0)
        {
            jumpCount = 0;
        }
        vsp = 0;
}
y = y + vsp;

if (!place_meeting(x, y + 1, O_Block))
{
    sprite_index = S_CharacterJump;
    image_speed = 0;
   /* if(sign(vsp) >0) image_index = 1; else image_index = 0; */
}
else
{
    image_speed = 1;
    if(hsp == 0)
    {
        sprite_index = S_Character;
    }
    else
    {
        sprite_index = S_CharacterMove;
    }
}

