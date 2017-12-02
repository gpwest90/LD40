if (phy_position_x < 0 + argument0.sprite_width / 2) {
  phy_speed_x = abs(phy_speed_x) * .8;
} else if (phy_position_x > room_width - argument0.sprite_width / 2) {
  phy_speed_x = abs(phy_speed_x) * -.8;
}

if (phy_position_y < 0 + argument0.sprite_height / 2) {
  phy_speed_y = abs(phy_speed_y) * .8;
} else if (phy_position_y > room_height - argument0.sprite_height / 2) {
  phy_speed_y = abs(phy_speed_y) * -.8;
}
