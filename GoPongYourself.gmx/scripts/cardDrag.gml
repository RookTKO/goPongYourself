if (mouse_check_button_released(mb_left))
{
    if (place_meeting(x,y, objGraveyard))
    {
        instance_destroy();
    }
        else
    {
        state = cardBaseState;

    }
    if  place_meeting(x,y, objMainArea) && (objPaddleP1.wP >= self.cardWPOINTS)
    {
        objPaddleP1.wP -= self.cardWPOINTS;
        if self.cardEFFECT == "TRUE"
        {
            cardEffect(self.cardID, self.cardTYPE);
        }
    instance_destroy();
                
    }
        else
    {
        state = cardBaseState;

    }
           hover_check = false;
        control.card = false;
}
x = smoothApproach(x, mouse_x, .3);
y = smoothApproach(y, mouse_y, .3);
