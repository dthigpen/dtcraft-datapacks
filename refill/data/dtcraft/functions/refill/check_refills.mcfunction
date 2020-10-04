# say check_refills
function dtcraft:call_stack/push

#region get or create this_user
data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:refill users
function dtcraft:user_utils/get_or_create
data modify storage dtcraft:call_stack this.this_user set from storage dtcraft:call_stack this.call.result
# tellraw @p ["me: ",{"nbt":"this.this_user","storage":"dtcraft:call_stack"}]
#endregion

execute if data entity @s SelectedItem run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.this_user
execute if data entity @s SelectedItem run function dtcraft:refill/store_selected_item
execute if data entity @s SelectedItem run data modify storage dtcraft:call_stack this.this_user set from storage dtcraft:call_stack this.call.result

execute unless data entity @s SelectedItem if data storage dtcraft:call_stack this.this_user.data.selected run data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:call_stack this.this_user
execute unless data entity @s SelectedItem if data storage dtcraft:call_stack this.this_user.data.selected run function dtcraft:refill/refill_if_same_slot
execute unless data entity @s SelectedItem if data storage dtcraft:call_stack this.this_user.data.selected run data modify storage dtcraft:call_stack this.this_user set from storage dtcraft:call_stack this.call.result
# tellraw @p ["me: ",{"nbt":"this.this_user","storage":"dtcraft:call_stack"}]
#region update user
data modify storage dtcraft:call_stack call.arg0 set from storage dtcraft:refill users
data modify storage dtcraft:call_stack call.arg1 set from storage dtcraft:call_stack this.this_user
function dtcraft:user_utils/update
data modify storage dtcraft:refill users set from storage dtcraft:call_stack this.call.result

#endregion

function dtcraft:call_stack/pop