// camera setup
cam = view_get_camera(0);
follow = oPlayer;

// for following the player at its center
xTo = x;
yTo = y;
half_view_height = camera_get_view_height(cam) / 2;
half_view_width = camera_get_view_width(cam) / 2;