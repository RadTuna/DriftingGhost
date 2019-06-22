var dir = point_direction(x,y,O_Character.x,O_Character.y);

switch(states)
{
    case states.chase:
        sprite_index = S_Yuki;
        if (distance_to_object(O_Character) <= sight && distance_to_object(O_Character)>run_sight)
        {states=states.shoot;}
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
        sprite_index = S_YukiAttack;
        image_speed = 0.25;
        if (x<O_Character.x) image_xscale = -1;
        else if(x>O_Character.x) image_xscale = 1;
        if(distance_to_object(O_Character) > sight)
            {states=states.chase;}
        if (distance_to_object(O_Character) <= run_sight)
            {states=states.run;}

                    
        motion_set(dir,0);

            /*if (delay == 0)
                {

                    //인스턴스 1번
                    inst=instance_create(x,y+40,O_yukiBullet);
                    inst.image_angle = dir;
                    
                    
                    //인스턴스 2번
                    inst2=instance_create(x,y-40,O_yukiBullet);
                    inst2.image_angle = dir;
                    
                    
                    //인스턴스 3번
                    inst3=instance_create(x-40,y,O_yukiBullet);
                    inst3.image_angle = dir;
                    
                    
                    //인스턴스 4번
                    inst4=instance_create(x+40,y,O_yukiBullet);
                    inst4.image_angle = dir;
                    */
                    
                    /*delay = 1;
                    alarm_set(0,40);  
                    
                                        //인스턴스 1번 실행
                    if (re_delay==0)
                    {
                    
                    dir = point_direction(x,y,O_Character.x,O_Character.y);
                    inst.image_angle = dir;
                    inst.direction=dir;
                    inst.speed=15;
                    re_delay=1;
                    alarm_set(2,2);
                    }
                                        
                    //인스턴스 2번 실행
                    if (re_delay2==0)
                    {
                    
                    dir = point_direction(x,y,O_Character.x,O_Character.y);
                    inst2.image_angle = dir;
                    inst2.direction=dir;
                    inst2.speed=15;
                    re_delay2=1;
                    alarm_set(3,2);
                    }

                    //인스턴스 3번 실행
                    if (re_delay3==0)
                    {
                    dir = point_direction(x,y,O_Character.x,O_Character.y);
                    inst3.image_angle = dir;
                    inst3.direction=dir;
                    inst3.speed=15;
                    re_delay3=1;
                    alarm_set(4,2);
                    }
                    
                    //인스턴스 4번 실행
                    if (re_delay4==0)
                    {
                    dir = point_direction(x,y,O_Character.x,O_Character.y);
                    inst4.image_angle = dir;
                    inst4.direction=dir;
                    inst4.speed=15;
                    re_delay4=1;
                    alarm_set(1,2); 
                    
                    }                   

                }*/
        break;

    case states.out:
        if(distance_to_object(O_Character) > sight)
        {states = states.chase;}
        motion_set(90,5);
        break;
}
