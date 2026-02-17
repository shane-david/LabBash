audio_play_sound(snd_powerup, 0, false);
global.inventory[2] = {
	sprite: sPower3,
	frame: 0
};



instance_create_layer(x, y -100, "Other", oPowerMessage);


instance_destroy(); 