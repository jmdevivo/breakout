/// @description Draw Values
// set draw properties
draw_set_color(c_white);
draw_set_font(fnt_distant);

// draw the player score
draw_set_halign(fa_left);
draw_text(8,18, "Score: " + string(global.player_score));

//draw high score
draw_set_halign(fa_right);
draw_text(room_width -8, 18, "High Score: " + string(global.high_score));

// draw the player lives as sprites
var _x = (room_width / 2) - (32 * (global.player_lives -1));
repeat(global.player_lives){
	draw_sprite_ext(spr_bat, 0, _x, room_height -16, .75, .75, 1, c_white, 0.5);
	_x += 65;
}