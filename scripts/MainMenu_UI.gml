draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(F_Main);
draw_sprite(S_MainTitle, 0, 640, 130);

//draw_text_colour(520, 115, "Hundred Ghost", c_maroon, c_red, c_red, c_red, 1);
//draw_text_colour(790, 155, "Night Line", c_red, c_red, c_maroon, c_red, 1);

if (pressedNew)
{
    draw_sprite_ext(S_MainStart, 0, (AllX1 + AllX2) / 2, (NewY1 + NewY2) / 2, 1, 1, 0, c_maroon, 0.8);
    draw_sprite(S_MainExit, 0, (AllX1 + AllX2) / 2, (ExitY1 + ExitY2) / 2);
}
else if (pressedExit)
{
    draw_sprite(S_MainStart, 0, (AllX1 + AllX2) / 2, (NewY1 + NewY2) / 2);
    draw_sprite_ext(S_MainExit, 0, (AllX1 + AllX2) / 2, (ExitY1 + ExitY2) / 2, 1, 1, 0, c_maroon, 0.8);
}
else
{
    draw_sprite(S_MainStart, 0, (AllX1 + AllX2) / 2, (NewY1 + NewY2) / 2);
    draw_sprite(S_MainExit, 0, (AllX1 + AllX2) / 2, (ExitY1 + ExitY2) / 2);
}

if (global.WControl)
{
    draw_sprite(S_WKey, 0, KeyX, KeyY);
}
else
{
    draw_sprite(S_SpaceKey, 0, KeyX, KeyY);
}

