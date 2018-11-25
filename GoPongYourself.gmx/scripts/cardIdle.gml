
hover_check = position_meeting(mouse_x, mouse_y, id) && control.card = false;
if (hover_check && mouse_check_button_pressed(mb_left)) {
    state = cardDrag;
    control.card = true;
}
