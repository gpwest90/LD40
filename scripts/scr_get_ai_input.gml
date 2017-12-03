//Define outputs and variables
input_up    = false;
input_down  = false;
input_left  = false;
input_right  = false;
// default target_x & target_y be where the ai is currently
var target_x = x;
var target_y = y;
var current_target = last_target;

// If there is a current_target and that current_target is no longer a concer (not in circle), forget that target
if (!current_target != undefined && current_target.image_blend != argument0) {
  current_target = undefined;
}

//Set target as the first ball in its circle
if (current_target == undefined) {
  with (obj_ball) {
    if (image_blend == argument0) {
      current_target = id;
      break;
    }
  }
}

// save the found target to the player
last_target = current_target;

// If we have a target, set the x/y coorinates we want the ai to move to
if (last_target != undefined) {

  //Set the coordinates to the target object's location
  target_x = last_target.x;
  target_y = last_target.y;

  //If the distance to the target is far enough away, we want to approach from the side
  //Once the AI is close enough, it will go directly towards the ball, pushing it accross the center line
  var distance_to_target = point_distance(x, y, last_target.x, last_target.y);
  if (distance_to_target > 50) {
    if (argument0 == c_blue) {
      target_x += 30;
    } else {
      target_x -= 30; 
    }
  }  
}

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


