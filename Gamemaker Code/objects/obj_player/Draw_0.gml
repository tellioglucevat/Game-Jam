/// @description Draw the player's health
draw_self();

var w = sprite_get_width(spr_heart);
var h = sprite_get_height(spr_heart);
for (var i=1; i<=healthpoints; i++)
	draw_sprite(spr_heart, 0, camera_get_view_x(view_camera[0]) + w-90 + (i*w), camera_get_view_y(view_camera[0]) + h);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntArial);

draw_text_transformed_color(camera_get_view_x(view_camera[0]) + 83, 
	camera_get_view_y(view_camera[0]) + 125, 
	"Shinies: " + string(global.playerCurrency), 1, 1, 0, c_blue, c_blue, c_aqua, c_aqua, 1);
