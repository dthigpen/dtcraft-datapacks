# say check_refills
function call_stack:push

# tellraw @p ["users before: ",{"nbt":"users","storage":"dt.refill:"}]

#region get or create this_user
data modify storage call_stack: call.arg0 set from storage dt.refill: users
function dt.user_util:get_or_create
data modify storage call_stack: this.this_user set from storage call_stack: call.result
#endregion

execute if data entity @s SelectedItem run data modify storage call_stack: call.arg0 set from storage call_stack: this.this_user
execute if data entity @s SelectedItem run function dt.refill:store_selected_item
execute if data entity @s SelectedItem run data modify storage call_stack: this.this_user set from storage call_stack: call.result

execute unless data entity @s SelectedItem if data storage call_stack: this.this_user.data.selected run data modify storage call_stack: call.arg0 set from storage call_stack: this.this_user
execute unless data entity @s SelectedItem if data storage call_stack: this.this_user.data.selected run function dt.refill:refill_if_same_slot
execute unless data entity @s SelectedItem if data storage call_stack: this.this_user.data.selected run data modify storage call_stack: this.this_user set from storage call_stack: call.result
#region update user
data modify storage call_stack: call.arg0 set from storage dt.refill: users
data modify storage call_stack: call.arg1 set from storage call_stack: this.this_user
function dt.user_util:update
data modify storage dt.refill: users set from storage call_stack: call.result

#endregion
# tellraw @p ["users after: ",{"nbt":"users","storage":"dt.refill:"}]
function call_stack:pop