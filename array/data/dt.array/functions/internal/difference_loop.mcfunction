function call_stack:push

data modify storage call_stack: this.list1 set from storage call_stack: this.arg0
data modify storage call_stack: this.list2 set from storage call_stack: this.arg1
data modify storage call_stack: this.difference set from storage call_stack: this.arg2

data modify storage call_stack: call.arg0 set from storage call_stack: this.list1
function dt.array:api/map/key_value/from_values
function call_stack:pipe
data modify storage call_stack: call.arg1 set from storage call_stack: this.list2[0]
function dt.array:api/reduce/subarray/equal_to
function call_stack:pipe
function dt.array:api/map/key_value/subarray/to_values
data modify storage call_stack: this.list1 set from storage call_stack: call.return[1]

data modify storage call_stack: this.return set from storage call_stack: this.list1

data remove storage call_stack: this.list2[0]
execute if data storage call_stack: this.list1[0] if data storage call_stack: this.list2[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.list1
execute if data storage call_stack: this.list1[0] if data storage call_stack: this.list2[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.list2
execute if data storage call_stack: this.list1[0] if data storage call_stack: this.list2[0] run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: this.list1[0] if data storage call_stack: this.list2[0] run function dt.array:internal/difference_loop
execute if data storage call_stack: this.list1[0] if data storage call_stack: this.list2[0] run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop