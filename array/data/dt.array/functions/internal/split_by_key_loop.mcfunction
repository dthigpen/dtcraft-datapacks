function call_stack:push

data modify storage call_stack: this.all_items set from storage call_stack: this.arg0
data modify storage call_stack: this.key set from storage call_stack: this.arg1
data modify storage call_stack: this.with_key set from storage call_stack: this.arg2
data modify storage call_stack: this.without_key set from storage call_stack: this.arg3

data modify storage call_stack: this.temp1 set value {value:{}}
data modify storage call_stack: this.temp2 set value {value:{}}

data modify storage call_stack: this.temp1.value set from storage call_stack: this.all_items[0]
data modify storage call_stack: this.temp2.value set from storage call_stack: this.key
execute store success score result dt.tmp run data modify storage call_stack: this.temp1 merge from storage call_stack: this.temp2

execute if score result dt.tmp = #equal dt.enum run data modify storage call_stack: this.with_key append from storage call_stack: this.all_items[0]
execute if score result dt.tmp = #not_equal dt.enum run data modify storage call_stack: this.without_key append from storage call_stack: this.all_items[0]
data remove storage call_stack: this.all_items[0]

data modify storage call_stack: this.result set value []
execute unless data storage call_stack: this.all_items[0] run data modify storage call_stack: this.result insert 0 from storage call_stack: this.with_key
execute unless data storage call_stack: this.all_items[0] run data modify storage call_stack: this.result insert 1 from storage call_stack: this.without_key
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.all_items
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.key
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.with_key
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: call.arg3 set from storage call_stack: this.without_key
execute if data storage call_stack: this.all_items[0] run function dt.array:internal/split_by_key_loop
execute if data storage call_stack: this.all_items[0] run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop