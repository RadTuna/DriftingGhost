
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (live == 3)
{
    draw_sprite(S_Live, 0, 50, 50);
    draw_sprite(S_Live, 0, 125, 50);
    draw_sprite(S_Live, 0, 200, 50);
}
else if (live == 2)
{
    draw_sprite(S_Live, 0, 50, 50);
    draw_sprite(S_Live, 0, 125, 50);
}
else if (live == 1)
{
    draw_sprite(S_Live, 0, 50, 50);
}

if (IsDead)
{
    draw_text_transformed(640, 300, "Your Dead!", 4, 4, 0);
}

if (global.remainingTime <= 0)
{
    draw_text_transformed(640, 300, "Your Win!", 4, 4, 0);
}

if (IsMagEmpty)
{
    draw_sprite(S_MagEmpty, 0, ((x - view_xview[0]) * 2) - 8, ((y - view_yview[0]) * 2) - 48);
}

draw_sprite_stretched(S_SpritBar, 0, 50, 125, sprit * 2.0, 16);

draw_text_transformed(600, 50, "Time : " + string(global.remainingTime), 2, 2, 0);

draw_text_transformed(1100, 50, "Score : " + string(global.gameScore), 2, 2, 0);

draw_sprite(S_Cursor, 0, (mouse_x - view_xview[0]) * 2, (mouse_y - view_yview[0]) * 2);
