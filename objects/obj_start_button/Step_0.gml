/// @description When the user clicks the start button, start the game by going to the next room
if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id){
	room_goto_next();
}