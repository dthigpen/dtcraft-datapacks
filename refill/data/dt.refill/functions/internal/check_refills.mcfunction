# say check_refills
function call_stack:push

# tellraw @p ["users before: ",{"nbt":"users","storage":"dt.refill:"}]

function dt.refill:internal/database/fetch_or_init
data modify storage call_stack: this.user set from storage call_stack: call.result

# If there is nothing selected, check the last selected for that same slot number
execute unless data entity @s SelectedItem if data storage call_stack: this.user.data.selected run data modify storage call_stack: call.arg0 set from storage call_stack: this.user
execute unless data entity @s SelectedItem if data storage call_stack: this.user.data.selected run function dt.refill:internal/try_refill
execute unless data entity @s SelectedItem if data storage call_stack: this.user.data.selected run data modify storage call_stack: this.user set from storage call_stack: call.result

execute if data entity @s SelectedItem run data modify storage call_stack: call.arg0 set from storage call_stack: this.user
execute if data entity @s SelectedItem run function dt.refill:internal/set_user_item_data
execute if data entity @s SelectedItem run data modify storage call_stack: this.user set from storage call_stack: call.result

#region update user
data modify storage call_stack: call.arg0 set from storage dt.refill: users
data modify storage call_stack: call.arg1 set from storage call_stack: this.user
function dt.user_util:update
data modify storage dt.refill: users set from storage call_stack: call.result

#endregion
# tellraw @p ["users after: ",{"nbt":"users","storage":"dt.refill:"}]
function call_stack:pop