if(instance_number(obj_brick) <= 0){
	room_restart();
}

if(gameover){
	if(keyboard_check_pressed(vk_anykey)){
		room_restart();
		global.player_score = 0;
		global.player_lives = 3;
		audio_play_sound(snd_Click, 1, false);

	}
}


if global.player_lives <= 0 {
instance_create_layer(room_width/2, room_height/2, "Instances", obj_gameover);
}