draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(640, 100, "Drifting Ghost", 4, 4, 0);

if (pressedNew)
{
    draw_button(AllX1, NewY1, AllX2, NewY2, false); 
    draw_button(AllX1, ContinueY1, AllX2, ContinueY2, true); 
    draw_button(AllX1, ExitY1, AllX2, ExitY2, true);
}
else if (pressedContinue)
{
    draw_button(AllX1, NewY1, AllX2, NewY2, true); 
    draw_button(AllX1, ContinueY1, AllX2, ContinueY2, false); 
    draw_button(AllX1, ExitY1, AllX2, ExitY2, true);
}
else if (pressedExit)
{
    draw_button(AllX1, NewY1, AllX2, NewY2, true); 
    draw_button(AllX1, ContinueY1, AllX2, ContinueY2, true); 
    draw_button(AllX1, ExitY1, AllX2, ExitY2, false); 
}
else
{
    draw_button(AllX1, NewY1, AllX2, NewY2, true); 
    draw_button(AllX1, ContinueY1, AllX2, ContinueY2, true); 
    draw_button(AllX1, ExitY1, AllX2, ExitY2, true);
}

draw_text_transformed_colour((AllX1 + AllX2) / 2, (NewY1 + NewY2) / 2, "New Game", 2, 2, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_colour((AllX1 + AllX2) / 2, (ContinueY1 + ContinueY2) / 2, "Continue", 2, 2, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_colour((AllX1 + AllX2) / 2, (ExitY1 + ExitY2) / 2, "Exit", 2, 2, 0, c_black, c_black, c_black, c_black, 1);

