/// @description player features 

// Movements

left_movement = keyboard_check(ord("A"));
right_movement = keyboard_check(ord("D"));
jump = keyboard_check_pressed(vk_space);

var movement = right_movement - left_movement;

horizontal_speed = movement * walk_speed;

vertical_speed = vertical_speed + gravity_speed;

// horizonral collison

if (place_meeting(x+horizontal_speed, y , Obj_platform))
{
	while (!place_meeting(x+ sign(horizontal_speed), y, Obj_platform))
	{
		x = x + sign(horizontal_speed);
	}
	horizontal_speed = 0;
}

x = x + horizontal_speed;

// vertical collison

if (place_meeting(x, y+vertical_speed, Obj_platform))
{
	while (!place_meeting(x, y+ sign(vertical_speed), Obj_platform))
	{
		y= y+ sign(vertical_speed);
	}
	vertical_speed = 0;
}

y = y + vertical_speed;


if(place_meeting(x, y+1, Obj_platform) and (jump))
{
	vertical_speed =- jump_speed;
}


// animation 

if (!place_meeting(x,y+1, Obj_platform))
{
	sprite_index = spr_player_jump;
	image_speed = 0 ;
	
	if(vertical_speed >0) image_index = 1;else image_index = 0;
		
}

else 
{
	image_speed=1;
	if(horizontal_speed ==0)
	{
		sprite_index = spr_player_idle;
	}
	
	else
	{
		sprite_index = spr_player_walk;
	}
}

if( horizontal_speed != 0) image_xscale = sign(horizontal_speed);







