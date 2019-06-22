
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

if (moX >= AllX1) && (moX <= AllX2)
{
    if (moY >= NewY1) && (moY <= NewY2)
    {
        pressedNew = true;
        alarm_set(0, 30);
    }
    if (moY >= ExitY1) && (moY <= ExitY2)
    {
        pressedExit = true;
        alarm_set(0, 30);
    }
}

if (moX >= KeyX - 100) && (moX <= KeyX + 100)
{
    if (moY >= KeyY - 100) && (moY <= KeyY + 100)
    {
        if (global.WControl)
        {
            global.WControl = false;
        }
        else
        {
            global.WControl = true;
        }
    }
}






