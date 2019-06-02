moX = mouse_x;
moY = mouse_y;
moBtn = mouse_check_button_pressed(mb_left);

if (moBtn)
{
    var bulletRef = instance_create(x, y, O_Bullet);
    
    if (bulletRef)
    {
        bulletRef.image_angle =  point_direction(x, y, moX, moY);
        bulletRef.direction = point_direction(x, y, moX, moY);
        bulletRef.speed = bulletSp;
    }
    
}
