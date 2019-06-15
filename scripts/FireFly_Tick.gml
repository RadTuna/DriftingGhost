
randomize();

if (canMove)
{
    movePositionX = random_range(startLocX - moveFactor, startLocX + moveFactor);
    movePositionY = random_range(startLocY - moveFactor, startLocY + moveFactor);

    move_towards_point(movePositionX, movePositionY, 0.3);
    
    canMove = false;
    moveDelay = current_time + moveInterval;
}

if (current_time >= moveDelay)
{
    canMove = true;
    moveDelay = 0;
}
