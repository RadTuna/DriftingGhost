key_left = keyboard_check(ord('A'));
key_right = keyboard_check(ord('D'));
key_jump = keyboard_check_pressed(ord('W')) || keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (hsp < 0)
{
    image_xscale = -1;
}
else
{
    image_xscale = 1;
}

// (place_meeting(x, y + 1 , O_Block))
if (key_jump) && (jumpCount < 2)
{ 
    vsp = -7;
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

