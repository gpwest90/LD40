var working_score = 0;
if (argument0 > 0) {
  working_score = argument0;
}
var new_speed = 300 - working_score * 25;
var new_damp = 5 - working_score * 0.5125;
//physics_set_restitution(0, new_restitution);
//spd = new_speed;
phy_linear_damping = new_damp;

