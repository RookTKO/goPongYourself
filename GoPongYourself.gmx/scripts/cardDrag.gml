if (mouse_check_button_released(mb_left)){
    state = cardBaseState;
}
x = smoothApproach(x, mouse_x, .3);
y = smoothApproach(y, mouse_y, .3);
