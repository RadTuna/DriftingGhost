
moX = mouse_x;
moY = mouse_y;
moBtn = mouse_check_button_pressed(mb_right);

if (moBtn) && (sprit > 10.5) && (!collision_circle(moX, moY, 10, all, false, false))
{
    sprit -= 10;
    var inst;
    inst = instance_create(moX, moY, O_Helper);
    inst.image_angle = point_direction(x, y, moX, moY) + 90;
}

