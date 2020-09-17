/// @description Control the Ball
//first check if the ball is moving

if !go {
	//Ball isn't running. See if game can be started by pressing space
	if keyboard_check(vk_space){
		go = true;
		speed = spd;
		direction = dir;
		audio_play_sound(snd_click, 0, false);
	}
}
