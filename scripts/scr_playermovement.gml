//---------------UPDATE INPUT
if (is_ai) {
  script_execute(scr_get_ai_input, argument5);
} else {
  script_execute(scr_get_keyboard_input, argument0, argument1, argument2, argument3);
}

//---------------RESET MOVE VARIABLES
moveX = 0;
moveY = 0;

//---------------INTENDED MOVEMENT
moveX = (input_right - input_left) * spd;
moveY = (input_down - input_up) * spd;

//---------------COLLISION CHECKS


//---------------APPLY MOVEMENT
physics_apply_force(phy_position_x, phy_position_y, moveX, moveY);

if (phy_speed > max_spd) {
  phy_speed_x = phy_speed_x * max_spd / phy_speed;
  phy_speed_y = phy_speed_y * max_spd / phy_speed;
}

script_execute(scr_clamp_into_arena, argument4);
