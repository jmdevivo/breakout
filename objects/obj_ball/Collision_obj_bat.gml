/// @description Bounce
vspeed *= -1;
var _s = speed;
var _dir = point_direction(other.x, other.y + 32, x, y);
var _dist = point_distance(x, y, other.x, other.y + 32);

//add direction based on position of the bounce
motion_add(_dir, _dist /5);
//maintain the speed
speed = _s
audio_play_sound(snd_bounce, 0, false);
