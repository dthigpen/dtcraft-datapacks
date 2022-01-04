# say check_refills
function call_stack:push

function dt.refill:internal/database/fetch_or_init
data modify storage call_stack: this.user set from storage call_stack: call.return

# If there is nothing selected, check the last selected for that same slot number
execute unless data entity @s SelectedItem if data storage call_stack: this.user.selected run data modify storage call_stack: call.arg0 set from storage call_stack: this.user
execute unless data entity @s SelectedItem if data storage call_stack: this.user.selected run function dt.refill:internal/try_refill
execute unless data entity @s SelectedItem if data storage call_stack: this.user.selected run data modify storage call_stack: this.user set from storage call_stack: call.return

execute if data entity @s SelectedItem run data modify storage call_stack: call.arg0 set from storage call_stack: this.user
execute if data entity @s SelectedItem run function dt.refill:internal/set_user_item_data
execute if data entity @s SelectedItem run data modify storage call_stack: this.user set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.user
function dt.refill:internal/database/save

function call_stack:pop