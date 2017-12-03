//Define outputs and variables
input_up    = false;
input_down  = false;
input_left  = false;
input_right  = false;

var target_x = x;
var target_y = y;

//Set default location the AI should go to (center of its circle)
/*
with (obj_score_circle) {
  if (image_blend == argument0) {
    target_x = x;
    target_y = y;
  }
}*/

//Set target location as the first ball in its circle
with (obj_ball) {
  if (image_blend == argument0) {
    target_x = x;
    target_y = y;
    //break;
  }
}

show_debug_message(target_x);
show_debug_message(target_y);

//Change controller inputs to move AI to target
if (target_x > x) {
  input_right = true;
}

if (target_x < x) {
  input_left = true;
}

if (target_y > y) {
  input_down = true;
}

if (target_y < y) {
  input_up = true;
}


