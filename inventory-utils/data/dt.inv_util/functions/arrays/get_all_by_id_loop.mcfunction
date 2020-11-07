#say get by id
function call_stack:push

data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.id set from storage call_stack: this.arg1
data modify storage call_stack: this.all_with_id set from storage call_stack: this.arg2

#region check id equality
data modify storage call_stack: this.val1 set from storage call_stack: this.id
data modify storage call_stack: this.val2 set from storage call_stack: this.items[0].id
execute store success storage call_stack: this.not_equal int 1 run data modify storage call_stack: this.val1 set from storage call_stack: this.val2
#endregion

execute if data storage call_stack: {this:{not_equal:0}} run data modify storage call_stack: this.all_with_id append from storage call_stack: this.items[0]
data remove storage call_stack: this.items[0]

# base case
execute unless data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: this.all_with_id
# loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.id
execute if data storage call_stack: this.items[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.all_with_id
execute if data storage call_stack: this.items[0] run function dt.inv_util:arrays/get_all_by_id_loop
execute if data storage call_stack: this.items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop