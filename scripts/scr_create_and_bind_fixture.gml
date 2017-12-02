var fix = physics_fixture_create();
physics_fixture_set_circle_shape(fix, argument0);
physics_fixture_set_density(fix, argument1);
physics_fixture_set_restitution(fix, argument2);
physics_fixture_set_collision_group(fix, argument3);
physics_fixture_set_linear_damping(fix, argument4);
physics_fixture_set_angular_damping(fix, argument5);
physics_fixture_set_friction(fix, argument6);
my_fix = physics_fixture_bind(fix, self);
phy_fixed_rotation = argument7;
physics_fixture_delete(fix);
return my_fix;

