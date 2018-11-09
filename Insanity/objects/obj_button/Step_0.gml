/// @description Activation code
if place_meeting(x, y, obj_player) {
	active = 60;
}
else {
	active--;
}
if active > 0 {
	image_index = 1;
	with(obj_trapdoor) {
		instance_change(obj_empty, true);
	}
}
else {
	image_index = 0;
	if instance_number(obj_empty) > 0 {
		with(obj_empty) {
			instance_change(obj_trapdoor, true);
		}
	}
}