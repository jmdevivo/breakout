/// @description activate powerup

global.powerup_exists = true;

switch(image_index){
	case 0:	//make the player bat bigger
		with(obj_bat){
			image_xscale = 1.5;
			alarm[0] = room_speed * 10;
		}
		break;
	case 1: //slow down the ball
		with(obj_ball) {
			speed = spd;
			alarm[1] = room_speed * 10;
		}
		break;
	case 2: //give the ball penetrate temporarily
		with(obj_ball){
			penatrate = true;
			alarm[0] = room_speed * 10;
			alarm[1] = room_speed * 10;
		}
}
instance_destroy();