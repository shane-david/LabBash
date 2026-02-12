
for (var i = 0; i < slot_count; i++)
{
    if (is_struct(global.inventory[i]))
    {
        var item = global.inventory[i];
        item.frame += 0.1;
    }
}

if (keyboard_check_pressed(vk_tab))
{
	inventory_open =!inventory_open;
}

if (inventory_open)
{
	inv_frame += inv_anim_speed;
	//anim_frame += anim_speed;
}
