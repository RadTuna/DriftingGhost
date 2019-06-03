
enemyHP -= 1;

if (enemyHP == 1)
{
    image_blend = make_colour_rgb(150, 50, 50);
}

if (enemyHP <= 0)
{
    instance_destroy(self, true);
    global.gameScore += 1;
}


