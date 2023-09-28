/// @description Move to next room

with(obj_player)
{
	if (hasControl)
	{
		hasControl = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}

