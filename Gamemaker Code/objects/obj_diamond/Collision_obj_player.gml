/// @description Increase player's currency
global.playerCurrency++;
instance_destroy();
audio_play_sound(snd_dimond,0,0);	
