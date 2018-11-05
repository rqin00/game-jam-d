/// @description Player movement control

// Player direction
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_space = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

x_speed = move * walk_speed;
x += x_speed;


// If the player is outside of the screen, move them to the edge
if (bbox_left < 0) {
	x -= bbox_left;
} else if (bbox_right > room_width) {
	x += room_width - bbox_right;
}

// Player jump
// if (keyboard_check_pressed(vk_up)) {
//	y = 
// }