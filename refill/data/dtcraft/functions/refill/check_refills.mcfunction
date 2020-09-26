#say check_refills

#region get or create this_user
data modify storage dtcraft:tmp arg1 set from storage dtcraft:refill users
function dtcraft:user_utils/get_or_create
data modify storage dtcraft:refill this_user set from storage dtcraft:tmp result
#endregion

execute if data entity @s SelectedItem run data modify storage dtcraft:tmp arg1 set from storage dtcraft:refill this_user
execute if data entity @s SelectedItem run function dtcraft:refill/store_selected_item
execute if data entity @s SelectedItem run data modify storage dtcraft:refill this_user set from storage dtcraft:tmp result

execute unless data entity @s SelectedItem if data storage dtcraft:refill this_user.data.selected run data modify storage dtcraft:tmp arg1 set from storage dtcraft:refill this_user
execute unless data entity @s SelectedItem if data storage dtcraft:refill this_user.data.selected run function dtcraft:refill/refill_if_same_slot

#region update user
data modify storage dtcraft:tmp arg1 set from storage dtcraft:refill users
data modify storage dtcraft:tmp arg2 set from storage dtcraft:refill this_user
function dtcraft:user_utils/update
data modify storage dtcraft:refill users set from storage dtcraft:tmp result
#endregion