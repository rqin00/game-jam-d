/// @description Player movement control

// Player direction
var x_dir = 0;
var y_dir = 0;

// Move left
if (keyboard_check(vk_left)) {
	x_dir -= 1;
	
}

// Move right
if (keyboard_check(vk_right)) {
	x_dir += 1;
}

// Move player
x += x_dir * x_speed; 

// If the player is outside of the screen, move them to the edge
if (bbox_left < 0) {
	x -= bbox_left;
} else if (bbox_right > room_width) {
	x += room_width - bbox_right;
}

// Player jump
// if (keyboard_check(vk_up)) {
//	y = 
// }