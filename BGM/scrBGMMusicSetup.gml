///scrBGMMusicSetup();

inBattle        = 0;// Is in battle check variable.
music_normal    = audio_play_sound(mus_TestNormal, 1, 1);// Normal BGM
music_battle    = audio_play_sound(mus_TestBattle, 1, 1);// Battle BGM

// Initially mute battle music.
audio_sound_gain(music_battle, 0, 1);
