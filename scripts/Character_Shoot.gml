
if (IsDead)
{
    return 0;
}

moX = mouse_x;
moY = mouse_y;
moBtn = mouse_check_button_pressed(mb_left);

armRef.image_angle = ((point_direction(x, y, moX, moY) + 90) % 180) - 90;
if (x > moX)
{
    image_xscale = -1;
    armRef.image_xscale = -1;
}
else
{
    image_xscale = 1;
    armRef.image_xscale = 1;
}

if (shootDelay <= current_time) && (IsReloading)
{
    shootCount += 1;
    canShoot = true;
    IsReloading = false;
}

IsMagEmpty = false;
if (moBtn) && (canShoot)
{
    if (armRef.image_xscale == -1)
    {
        var myX = lengthdir_x(18, armRef.image_angle + 180) + x;
        var myY = lengthdir_y(18, armRef.image_angle + 180) + y + 1;
        var inst = instance_create(myX, myY, O_FireEffect);
        inst.image_angle = point_direction(x, y, moX, moY);
    }
    else
    {
        var myX = lengthdir_x(18, armRef.image_angle) + x;
        var myY = lengthdir_y(18, armRef.image_angle) + y + 1;
        var inst = instance_create(myX, myY, O_FireEffect);
        inst.image_angle = point_direction(x, y, moX, moY);
    }
    
    var bulletRef = instance_create(x, y, O_Bullet);
    
    if (bulletRef)
    {
        bulletRef.image_angle =  point_direction(x, y, moX, moY);
        bulletRef.direction = point_direction(x, y, moX, moY);
        bulletRef.speed = bulletSp;
        shootCount -= 1;
    }
}

if (shootCount < MaxMag) && (!IsReloading)
{
    shootDelay = 0;
    shootDelay = current_time + shootCoolDownTime;
    IsReloading = true;
}

if (shootCount <= 0)
{
    IsMagEmpty = true;
    shootCount = 0;
    canShoot = false;
}

