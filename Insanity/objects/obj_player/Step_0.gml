/// @description Player movement control

// Start wait
if (start_game == true) {

	// Get player input
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_space = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));

	// Calculate player speed
	var move = key_right - key_left;

	x_speed = move * walk_speed;

	y_speed += y_gravity;

	// Jump 
	if (place_meeting(x, y + 1, obj_floor) || (place_meeting(x, y + 1, obj_trapdoor))) && (key_space) {
		y_speed = -7;
	}

	// Horizontal collision 
	if (place_meeting(x + x_speed, y - 1, obj_floor) || place_meeting(x + x_speed, y - 1, obj_trapdoor)) {
		while (!place_meeting(x + sign(x_speed), y, obj_floor) && !place_meeting(x + sign(x_speed), y, obj_trapdoor)) { // Sign gives +-1 based on sign of variable E.x. sign(5) = 1
			x += sign(x_speed);
		}
		x_speed = 0;
	}

	x += x_speed;

	// Vertical collision
	if (place_meeting(x, y + y_speed, obj_floor) || place_meeting(x, y + y_speed, obj_trapdoor)) {
		while (!place_meeting(x, y + sign(y_speed), obj_floor) && !place_meeting(x, y + sign(y_speed), obj_trapdoor)) {
			y += sign(y_speed);
		}
		y_speed = 0;
		if (place_free(x, y + (sprite_height / 2))) {
			y_speed = 1;
			game_restart();
		}
	}

	y += y_speed; 

	// If the player is outside of the screen, move them to the edge
	if (bbox_left < 0) {
		x -= bbox_left;
	} 

	else if (bbox_right > room_width) {
		x += room_width - bbox_right;
	}
	
	if (bbox_bottom < obj_camera_follow.y - 384) { 
		life = 0;
	}
	
	if (life == 0) {
		game_restart();
	}
}