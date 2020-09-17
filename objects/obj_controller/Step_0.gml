
/// @description check room restart

if instance_number(obj_brick) <= 0 {
	if room_next(room) != -1 {
		room_goto_next();	
	}
	else {
		room_goto(Room1);	
	}
}
else {
	if state == "GAMEOVER"{

		global.player_score = 0;
		global.player_lives = 3;
		room_goto(main_manu);		
		
	}
}