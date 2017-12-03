var scoring_circle = instance_place(phy_position_x, phy_position_y, obj_score_circle);


if (scoring_circle != noone) {
    if (scoring_circle.x < (room_width / 2)) {
        image_blend = c_red;
    } else {
        image_blend = c_blue;
    }
    phy_linear_damping = 5;
    phy_angular_damping = 5;    
} else {
    image_blend = -1;
    phy_linear_damping = 0.01;
    phy_angular_damping = 0.1;
}

