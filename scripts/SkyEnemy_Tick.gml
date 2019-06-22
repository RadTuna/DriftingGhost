var dir = point_direction(x,y,O_Character.x,O_Character.y);
switch(states)
{
    case states.chase:
        sprite_index = S_SkyEnemy;
        if (distance_to_object(O_Character) <= sight && distance_to_object(O_Character)>run_sight)
        {states=states.shoot;}
        if (distance_to_object(O_Character) <= run_sight)
        {states=states.run;}
        if (distance_to_object(O_Block) <= out_sight)
        {states=states.out;}
        if (x<O_Character.x) image_xscale = -1;
        else if(x>O_Character.x) image_xscale = 1;
        motion_set(dir,4);
        break;
    
    case states.run:
        if (distance_to_object(O_Block) <= out_sight)
        {states=states.out;}
        if(distance_to_object(O_Character) >sight)
        {states=states.chase;}


        motion_set(dir-180,12);
        break;
        

    
    case states.shoot:
        sprite_index = S_SkyEnemyAttack;
        if(distance_to_object(O_Character) > sight)
            {states=states.chase;}
        if (distance_to_object(O_Character) <= run_sight)
            {states=states.run;}

                    
        motion_set(dir,0);
            if(delay == 0)
            {   
                instance_create(x,y,O_TenguBullet);
                delay = 1;
                alarm_set(0,45);
            }
        break;

    case states.out:
        if(distance_to_object(O_Character) > sight)
        {states = states.chase;}
        motion_set(90,5);
        break;
        

        
//    case states.wait:
//        if(delay2 == 0)
//        {states = states.chase}
//        motion_set(dir,1);
//        break;
}
