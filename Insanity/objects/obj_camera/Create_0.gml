/// @description Set up camera

// Sets camera to cam 0
cam = view_camera[0];

// Has camera follow the camera follow object
follow = obj_camera_follow;

// Sets camera in middle of sprite
view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;

// Sets up original destination for camera (initial destination)
xToward = xstart;
yToward = ystart;

