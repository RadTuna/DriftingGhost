dir = point_direction(x,y,O_Character.x,O_Character.y);
if (delay == 0)
{

                    //인스턴스 1번
                    global.inst=instance_create(x,y+40,O_YukiBullet);
                    //global.inst.image_angle = dir;
                    
                    
                    //인스턴스 2번
                    global.inst2=instance_create(x,y-40,O_YukiBullet);
                   // global.inst2.image_angle = dir;
                    
                    
                    //인스턴스 4번
                   global.inst4=instance_create(x-40,y,O_YukiBullet);
                   // global.inst4.image_angle = dir;
                    
                    
                    //인스턴스 3번
                    global.inst3=instance_create(x+40,y,O_YukiBullet);
                   // global.inst3.image_angle = dir;
                    
                    delay = 1;
                    alarm_set(0,50);
}
