
var expr1 = place_meeting(x, y, O_Block);
var expr2 = place_meeting(x, y, O_Enemy);
var expr3 = place_meeting(x, y, O_SkyEnemy);
var expr4 = place_meeting(x, y, O_Yuki);

if (expr1) || (expr2) || (expr3) || (expr4)
{
    var inst = instance_create(x, y, O_HitEffect);
    inst.image_angle = direction;
    instance_destroy(self, true);
}
