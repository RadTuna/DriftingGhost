
if (IsDead)
{
    return 0;
}

key_left = keyboard_check(ord('A'));
key_right = keyboard_check(ord('D'));
key_dash = keyboard_check(vk_shift);
key_dashReleased = keyboard_check_released(vk_shift);
if (global.WControl)
{
    key_jump = keyboard_check_pressed(ord('W'));
}
else
{
    key_jump = keyboard_check_pressed(vk_space);
}


var move = key_right - key_left;

hsp = (move * walksp)
hsp += hsp * ((global.gameScore + 1) * 0.03);

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
    immotal = true;
    if (sprit < 0.5)
    {
        sprit = 0.0;
        dashReleaseCheck = true;
    }
}
else
{
    sprit += spritIncreaseFactor;
    immotal = false;
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
armRef.x = x;
if (armRef.image_xscale == -1)
{
    leafRef.x = lengthdir_x(12, armRef.image_angle + 180) + x;
}
else
{
    leafRef.x = lengthdir_x(12, armRef.image_angle) + x;
}

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
armRef.y = y;
if (armRef.image_xscale == -1)
{
    leafRef.y = lengthdir_y(12, armRef.image_angle + 180) + y + 1;
}
else
{
    leafRef.y = lengthdir_y(12, armRef.image_angle) + y + 1;
}

if (!place_meeting(x, y + 1, O_Block)) && (!key_dash)
{
    sprite_index = S_CharacterJump;
    image_speed = 0;
   /* if(sign(vsp) >0) image_index = 1; else image_index = 0; */
}
else
{
    image_speed = 1;
    if (key_dash) && (!dashReleaseCheck)
    {
        if ((hsp > 0) && (x > mouse_x)) || ((hsp < 0) && (x <= mouse_x))
        {
             sprite_index = S_BackDash;
        }
        else
        {
            sprite_index = S_ForwardDash;
        }
    }
    else
    {
        if(hsp == 0)
        {
            sprite_index = S_Character;
        }
        else
        {
            sprite_index = S_CharacterMove;
        }
    }
}

