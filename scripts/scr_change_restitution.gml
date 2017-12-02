// Add 0.25 restitution for each additional ball, but don't got negative
var new_restitution = max(0, argument0 * 0.25);
physics_set_restitution(0, new_restitution);

