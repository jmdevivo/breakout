/// @description Move

if keyboard_check(vk_left){
	//check bat doesn't go out of room to the left
	if x > sprite_get_xoffset(sprite_index) + spd{
		x -= spd; //move the bat
	}
	else {
		x = sprite_get_xoffset(sprite_index); //snap the bat to the leftmost side
	}
}
if keyboard_check(vk_right){
	//check bat doesn't go off the screen to the right
	if x < room_width - sprite_get_xoffset(sprite_index) - spd{
		x += spd; //move bat
	}
	else {
		x = room_width - sprite_get_xoffset(sprite_index) //snap bat to the rightmost sude
	}
}
// move ball object with bat if ball isn't moving yet
with(obj_ball){ 
	if !go x = other.x;
}