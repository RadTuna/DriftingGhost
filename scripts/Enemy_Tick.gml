
var dir = point_direction(x,y,O_Character.x,O_Block.y);
switch(states)
{
    case states.chase:
    sprite_index = S_Enemy;
        if (distance_to_object(O_Character) <= sight)
            {states=states.shoot;}
        if (x<O_Character.x) image_xscale = -1;
        else if(x>O_Character.x) image_xscale = 1;
        motion_set(dir,4);
        break;
    
    case states.shoot:
        sprite_index = S_EnemyAttack;
        if(distance_to_object(O_Character) > sight)
            {
            states=states.chase;         
            }
        motion_set(dir,1);
            if(delay == 0)
            {   instance_create(x,y,O_OniBullet);
                delay = 1;
                alarm_set(0,15);
            }
        break;

        
//    case states.wait:
//        if(delay2 == 0)
//        {states = states.chase}
//        motion_set(dir,1);
//        break;
}
