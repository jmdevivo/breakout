/// @description Destroy brick
var _dir = direction -180; //get the direction back along the way the ball moved


if !penatrate{
	//this loop will only run when a collision is detected
	while(place_meeting(x, y, other)){
		//move ball along direction it came from until no collision is detected
		x += lengthdir_x(1, _dir);
		y += lengthdir_y(1, _dir);
	}
	move_bounce_all(true);
}

global.player_score += 15;
if speed < 12 speed += .1;
audio_play_sound(snd_explosion, 0, false);
instance_destroy(other); //destroy the other object in the collision, in this case the brick
