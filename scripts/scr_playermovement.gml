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

// Horizontal
if (moveX != 0) {
    if (place_meeting(x + moveX, y, obj_ball)) {
        repeat(abs(moveX)) {
            if (!place_meeting(x + sign(moveX), y, obj_ball)) { x += sign(moveX); } 
            else { break; }
        }
        moveX = 0;
    }
}

// Vertical
if (moveY != 0) {
    if (place_meeting(x, y + moveY, obj_ball)) {
        repeat(abs(moveY)) {
            if (!place_meeting(x, y + sign(moveY), obj_ball)) { y += sign(moveY); } 
            else { break; }
        }
        moveY = 0;
    }
}
    
//---------------APPLY MOVEMENT   
x += moveX;
y += moveY;

x = clamp(x, 0, room_width - argument4.sprite_width);
y = clamp(y, 0, room_height - argument4.sprite_height);

//TEST
