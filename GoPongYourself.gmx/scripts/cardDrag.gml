if (mouse_check_button_released(mb_left))
{
/**    if (place_meeting(x,y, objMainArea) || place_meeting(x,y, objP1CardArea))
    {
        instance_destroy();
    }
    else
    {**/
        state = cardBaseState;

   // }
           hover_check = false;
        control.card = false;
}
x = smoothApproach(x, mouse_x, .3);
y = smoothApproach(y, mouse_y, .3);
