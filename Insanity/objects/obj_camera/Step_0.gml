/// @description Camera movement
// Udpate destination
if (instance_exists(follow)) {
	xToward = follow.x;
	yToward = follow.y;
}

// Update object position
x += (xToward - x);
y += (yToward - y);

// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);