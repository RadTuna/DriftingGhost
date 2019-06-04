
moX = mouse_x;
moY = mouse_y;

if (pressedNew) || (pressedContinue) || (pressedExit)
{
    return 0;
}

if (!mouse_check_button_pressed(mb_left))
{
    return 0;   
}

if (moX <= AllX1) || (moX >= AllX2)
{
    return 0;
}

if (moY >= NewY1) && (moY <= NewY2)
{
    pressedNew = true;
    alarm_set(0, 30);
}
if (moY >= ContinueY1) && (moY <= ContinueY2)
{
    pressedContinue = true;
    alarm_set(0, 30);
}
if (moY >= ExitY1) && (moY <= ExitY2)
{
    pressedExit = true;
    alarm_set(0, 30);
}






