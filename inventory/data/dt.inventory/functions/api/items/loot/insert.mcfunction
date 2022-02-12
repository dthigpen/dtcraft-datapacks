function call_stack:push
data modify storage call_stack: this.source_items set from storage call_stack: this.arg0
data modify storage call_stack: this.dest_items set from storage call_stack: this.arg1
data modify storage call_stack: this.max_count set value 127b
data modify storage call_stack: this.max_count set from storage call_stack: this.arg2
execute unless data storage call_stack: this.temp_return run data modify storage call_stack: this.temp_return set value [[],[]]

execute if data storage call_stack: this.source_items[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.temp_return[1] set from storage call_stack: this.dest_items
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.source_items[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.dest_items
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.max_count
execute if data storage call_stack: this.continue run function dt.inventory:api/item/loot/insert
execute if data storage call_stack: this.continue run data modify storage call_stack: this.remaining set from storage call_stack: call.return.remaining
execute if data storage call_stack: this.continue run data modify storage call_stack: this.dest_items set from storage call_stack: call.return.items
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return[0] append from storage call_stack: this.remaining[]

execute if data storage call_stack: this.continue run data remove storage call_stack: this.source_items[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.source_items
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.dest_items
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.max_count
execute if data storage call_stack: this.continue run data modify storage call_stack: call.temp_return set from storage call_stack: this.temp_return
execute if data storage call_stack: this.continue run function dt.inventory:api/items/loot/insert
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return

function call_stack:pop