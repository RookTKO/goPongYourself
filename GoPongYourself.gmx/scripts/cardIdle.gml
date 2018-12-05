
hover_check = position_meeting(mouse_x, mouse_y, id) && control.card = false;
if (hover_check && mouse_check_button_pressed(mb_left)) {
    state = cardDrag;
    control.card = true;
    depth = -3;
}

if (hover_check)
{
    image_xscale = 1.2;
    image_yscale = 1.2;
}
else
{
    image_xscale = 1;
    image_yscale = 1;
}

