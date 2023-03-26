///scrEnemyController();

// -> Instantiate enemies
if(keyboard_check_pressed(vk_space) && /*instance_number(ObjEnemy) < 1*/ !instance_exists(ObjEnemy))
{
    // Instantiate one enemy near player.
    instance_create((ObjPlayer.x + 70)* image_xscale, ObjPlayer.y - 60, ObjEnemy);
}

// -> Delets the enemy
if(keyboard_check_pressed(ord('V')) && /*instance_number(ObjEnemy) > 0*/ instance_exists(ObjEnemy))
{
    // Delets the enemy we just created.
    with(ObjEnemy)
    {
        instance_destroy();
    }
}


