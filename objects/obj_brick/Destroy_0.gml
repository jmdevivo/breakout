/// @description create a powerup

if !global.powerup_exists && irandom(2) == 0 {
	instance_create_layer(x,y,layer, obj_powerup);
}
