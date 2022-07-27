
# remove 0 count items, assumes they are air
data modify storage call_stack: this.return set value [[],[]]
data modify storage call_stack: call.arg0 set from storage call_stack: this.item_counts[0]
data modify storage call_stack: call.arg0 append from storage call_stack: this.item_counts[1][]
data modify storage call_stack: call.arg0 append from storage call_stack: this.item_counts[2][]
function dt.array:api/map/key_value/from_values
function call_stack:pipe
data modify storage call_stack: call.arg1 set value 0b
function dt.array:api/reduce/subarray/equal_to
data modify storage call_stack: call.arg0 set from storage call_stack: call.return[1]
function dt.array:api/map/key_value/to_values
function call_stack:pipe
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/map/math/subtract
data modify storage call_stack: call.arg0 set from storage call_stack: call.return
function dt.array:api/map/type/to_byte
data modify storage call_stack: call.arg0 set from storage call_stack: this.crafting_items
data modify storage call_stack: call.arg1 set from storage call_stack: call.return
function dt.inventory:internal/apply/count
data modify storage call_stack: this.return[0] set from storage call_stack: call.return
data remove storage call_stack: this.return[0][{Count:0b}]
data modify storage call_stack: this.return[0] append from storage call_stack: this.extras[]

data modify storage call_stack: call.arg0 set from storage call_stack: global.dt.crafting.result.result[0]
data modify storage call_stack: call.arg1 set from storage call_stack: global.dt.crafting.result.result[1]
function dt.inventory:api/item/from_id
data modify storage call_stack: this.return[1] append from storage call_stack: call.return