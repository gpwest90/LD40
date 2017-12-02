//---------------UPDATE INPUT
input_up    = keyboard_check(argument0);
input_down  = keyboard_check(argument1);
input_left  = keyboard_check(argument2);
input_right  = keyboard_check(argument3);


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

//TEST
