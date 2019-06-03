
if (IsDead)
{
    return 0;
}

moX = mouse_x;
moY = mouse_y;
moBtn = mouse_check_button_pressed(mb_left);

if (shootDelay > current_time)
{
    return 0;
}

IsMagEmpty = false;
shootDelay = 0;
canShoot = true;
if (moBtn)
{
    var bulletRef = instance_create(x, y, O_Bullet);
    
    if (bulletRef)
    {
        bulletRef.image_angle =  point_direction(x, y, moX, moY);
        bulletRef.direction = point_direction(x, y, moX, moY);
        bulletRef.speed = bulletSp;
        shootCount += 1;
    }
}

if (shootCount >= 3)
{
    IsMagEmpty = true;
    shootCount = 0;
    canShoot = false;
    shootDelay = current_time + shootCoolDownTime;
}

