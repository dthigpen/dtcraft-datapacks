# say from_inventory
function call_stack:push

data modify storage call_stack: this.user set from storage call_stack: this.arg0

# find in stored inventory first
data modify storage call_stack: call.arg0 set from storage call_stack: this.user.inventory
data modify storage call_stack: call.arg1 set value {id:""}
data modify storage call_stack: call.arg1.id set from storage call_stack: this.user.selected.id
data modify storage call_stack: call.arg2 set value 1
function dt.array:api/split/by_key_limit_n
data modify storage call_stack: this.data_item_found set from storage call_stack: call.return[0][0] 

# if found in inventory data, match with actual inventory
execute if data storage call_stack: this.data_item_found.id run function dt.inventory:api/player/items/inventory/get
execute if data storage call_stack: this.data_item_found.id run data modify storage call_stack: this.items set from storage call_stack: call.return

execute if data storage call_stack: this.data_item_found.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.data_item_found.id run data modify storage call_stack: call.arg1 set value {id:"",Slot:""}
execute if data storage call_stack: this.data_item_found.id run data modify storage call_stack: call.arg1.id set from storage call_stack: this.data_item_found.id
execute if data storage call_stack: this.data_item_found.id run data modify storage call_stack: call.arg1.Slot set from storage call_stack: this.data_item_found.Slot
execute if data storage call_stack: this.data_item_found.id run data modify storage call_stack: call.arg2 set value 1
execute if data storage call_stack: this.data_item_found.id run function dt.array:api/split/by_key_limit_n
execute if data storage call_stack: this.data_item_found.id run data modify storage call_stack: this.actual_item_found set from storage call_stack: call.return[0][0]


# execute if data storage call_stack: this.actual_item_found.id store result 
# TODO check that new items durability is greater than current
execute if data storage call_stack: this.actual_item_found.id run data modify storage call_stack: call.arg0 set from storage call_stack: this.user
execute if data storage call_stack: this.actual_item_found.id run data modify storage call_stack: call.arg1 set from storage call_stack: this.actual_item_found
execute if data storage call_stack: this.actual_item_found.id run function dt.refill:internal/do_refill
# execute unless data storage call_stack: this.actual_item_found.id run data remove storage call_stack: this.user.selected

function call_stack:pop