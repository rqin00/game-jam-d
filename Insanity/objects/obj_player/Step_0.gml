// Player movement control

// Player direction
var dir = 0;

// Move left
if (keyboard_check(vk_left)) {
	dir -= 1;
	
}

// Move right
if (keyboard_check(vk_right)) {
	dir += 1;
}

// Move player
x += dir * x_speed; 

// If the player is outside of the screen, move them to the edge
if (bbox_left < 0) {
	x -= bbox_left;
} else if (bbox_right > room_width) {
	x += room_width - bbox_right;
}