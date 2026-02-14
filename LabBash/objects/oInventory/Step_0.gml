
for (var i = 0; i < slot_count; i++)
{
    if (is_struct(global.inventory[i]))
    {
        var item = global.inventory[i];
        item.frame += 0.1;
    }
}

//If the TAB key is pressed then show or hide the inventory sprite
if (keyboard_check_pressed(vk_tab))
{
	inventory_open =!inventory_open;
}

//Show inventory animation if the inventory is being displayed
if (inventory_open)
{
	inv_frame += inv_anim_speed;
}
