# Built with mcpy (https://github.com/dthigpen/mcpy)

function call_stack:push
function dt.refill:internal/database/fetch_or_init
data modify storage call_stack: this.var8 set from storage call_stack: call.return
execute unless data entity @s SelectedItem if data storage call_stack: this.var8.selected run data modify storage call_stack: call.arg0 set from storage call_stack: this.var8
execute unless data entity @s SelectedItem if data storage call_stack: this.var8.selected run function dt.refill:internal/try_refill
execute unless data entity @s SelectedItem if data storage call_stack: this.var8.selected run data modify storage call_stack: this.var8 set from storage call_stack: call.return
execute if data entity @s SelectedItem run data modify storage call_stack: call.arg0 set from storage call_stack: this.var8
execute if data entity @s SelectedItem run function dt.refill:internal/set_user_item_data
execute if data entity @s SelectedItem run data modify storage call_stack: this.var8 set from storage call_stack: call.return
data modify storage call_stack: call.arg0 set from storage call_stack: this.var8
function dt.refill:internal/database/save
function call_stack:pop
