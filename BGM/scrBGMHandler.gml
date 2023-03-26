///scrBGMHandler();

// -> Activates inBattle trigger if there's monsters
if(/*instance_number(ObjEnemy) > 0*/ instance_exists(ObjEnemy) && !inBattle)
{
    inBattle = 1;// is in battle.
}

// Deactivates inBattle trigger if there's no monsters
if(/*instance_number(ObjEnemy) < 1*/ !instance_exists(ObjEnemy) && inBattle)
{
    inBattle = 0;// not in battle anymore.
}


// -> Switch sounds when in battle or not.
if(inBattle)
{
    // Reduces the normal map sound and rises the battle sound.
    // 100/200 = time in miliseconds until the volume gets up or down.
    // You can change it to a number that fits your needs.
    audio_sound_gain(music_normal, 0, 100);
    audio_sound_gain(music_battle, 1, 200);   
}
else
{
    // Check if theres already a sound playing.
    // [ Not needed maybe -> just double checking,
    //   may have problems with memory load or not tho.. ]
    // Just to ensure the BGM doesn't end by any bug or error and stop them.
    if(!audio_is_playing(music_normal) && !audio_is_playing(music_battle))
    {
        music_normal = audio_play_sound(mus_TestNormal, 1, 1);
        music_battle = audio_play_sound(mus_TestBattle, 1, 1);
    }
    
    // Return to normal music
    audio_sound_gain(music_battle, 0, 200);
    audio_sound_gain(music_normal, 1, 100);
}
