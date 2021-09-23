function call_stack:push

data modify storage call_stack: this.all_items set from storage call_stack: this.arg0
data modify storage call_stack: this.key set from storage call_stack: this.arg1
data modify storage call_stack: this.with_key set from storage call_stack: this.arg2
data modify storage call_stack: this.without_key set from storage call_stack: this.arg3
execute store result score $limit dt.tmp run data get storage call_stack: this.arg4

execute if data storage call_stack: this.all_items[0] if score $limit dt.tmp matches 1.. run data modify storage call_stack: this.continue set value true
data modify storage call_stack: this.return set value [[],[]]
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return[0] set from storage call_stack: this.with_key
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return[1] set from storage call_stack: this.without_key

execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp1 set value {value:{}}
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp2 set value {value:{}}

execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp1.value set from storage call_stack: this.all_items[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp2.value set from storage call_stack: this.key
execute if data storage call_stack: this.continue store success score result dt.tmp run data modify storage call_stack: this.temp1 merge from storage call_stack: this.temp2

execute if data storage call_stack: this.continue if score result dt.tmp = #equal dt.enum run data modify storage call_stack: this.with_key append from storage call_stack: this.all_items[0]
execute if data storage call_stack: this.continue if score result dt.tmp = #equal dt.enum run scoreboard players remove $limit dt.tmp 1
execute if data storage call_stack: this.continue if score result dt.tmp = #not_equal dt.enum run data modify storage call_stack: this.without_key append from storage call_stack: this.all_items[0]
execute if data storage call_stack: this.continue run data remove storage call_stack: this.all_items[0]

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.all_items
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.key
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.with_key
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg3 set from storage call_stack: this.without_key
execute if data storage call_stack: this.continue store result storage call_stack: call.arg4 int 1 run scoreboard players get $limit dt.tmp
execute if data storage call_stack: this.continue run function dt.array:internal/split_by_key_loop
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop