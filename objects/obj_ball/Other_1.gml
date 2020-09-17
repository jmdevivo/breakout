/// @description Bounce or Die
// check if ball is colliding with left or right side of the room
if bbox_left < 0 || bbox_right > room_width{
	//make sure ball stays within the room bounds
	x = clamp(x, sprite_get_xoffset(sprite_index), room_width - sprite_get_xoffset(sprite_index));
	//reverse the horizontal component of the speed vector
	hspeed *= -1;
}

//check if ball is colliding with the top of the room
if bbox_top < 0 {
	vspeed *= -1;	
}
else {
	//check if ball is colliding with bottom of the room
	if bbox_bottom > room_height {
		global.player_lives -=1;
		if global.player_lives <= 0 {
			if global.player_score > global.high_score{
				global.high_score = global.player_score;	
			}
			with(obj_controller){
				state = "GAMEOVER";	
			}
		}
		else {
			//the ball is leaving the room, destroy room and create a new one
			instance_create_layer(xstart, ystart, layer, obj_ball);	
		}
		instance_destroy();
	}
}
//with each bounce increase the speed to a maximum of 12px per step. Play bounce sound
if speed < 12 speed +=.1;
audio_play_sound(snd_bounce, 0, false);
direction += 2 - random(4);
