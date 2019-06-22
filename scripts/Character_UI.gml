
if (!global.canDraw)
{
    return 0;
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(F_GamePlay);

liveIndex = liveIndex % liveLimit;
if (live == 3)
{
    draw_sprite(S_Live, liveIndex, 75, 60);
    draw_sprite(S_Live, liveIndex, 150, 60);
    draw_sprite(S_Live, liveIndex, 225, 60);
}
else if (live == 2)
{
    draw_sprite(S_Live, liveIndex, 75, 60);
    draw_sprite(S_Live, liveIndex, 150, 60);
}
else if (live == 1)
{
    draw_sprite(S_Live, liveIndex, 75, 60);
}

if (IsDead)
{
    draw_text_transformed_colour(640, 350, "Your Dead!", 2, 2, 0, c_maroon, c_maroon, c_maroon, c_maroon, 1);
}

if (global.remainingTime <= 0)
{
    draw_text_transformed_colour(640, 350, "Your Win!", 2, 2, 0, c_silver, c_silver, c_silver, c_silver, 1);
}

if (IsMagEmpty)
{
    draw_sprite(S_MagEmpty, 0, ((x - view_xview[0]) * 2) - 8, ((y - view_yview[0]) * 2) - 48);
}

draw_sprite_stretched(S_SpritBar, 0, 75, 125, sprit * 2.0, 18);
draw_sprite(S_SpritBarCover, 0, 180, 140);

draw_text(650, 60, "Time : " + string(global.remainingTime));

draw_text(1150, 60, "Score : " + string(global.gameScore));

draw_sprite(S_Cursor, 0, (mouse_x - view_xview[0]) * 2, (mouse_y - view_yview[0]) * 2);

liveIndex += 1;

