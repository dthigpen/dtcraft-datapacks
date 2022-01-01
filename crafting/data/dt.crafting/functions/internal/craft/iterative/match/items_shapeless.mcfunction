function call_stack:push
data modify storage call_stack: this.item_rows set from storage call_stack: this.arg0
data modify storage call_stack: this.set_rows set from storage call_stack: this.arg1
execute store result score #size1 dt.tmp run data get storage call_stack: this.item_rows[0]
execute store result score #size2 dt.tmp run data get storage call_stack: this.set_rows
execute unless score #size1 dt.tmp = #size2 dt.tmp run data modify storage call_stack: this.fail set value true
# row 1
execute unless data storage call_stack: this.fail if data storage call_stack: this.item_rows[0] if data storage call_stack: this.set_rows[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.item_rows[0]
execute unless data storage call_stack: this.fail if data storage call_stack: this.item_rows[0] if data storage call_stack: this.set_rows[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_rows[0]
execute unless data storage call_stack: this.fail if data storage call_stack: this.item_rows[0] if data storage call_stack: this.set_rows[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.set_rows
execute unless data storage call_stack: this.fail if data storage call_stack: this.item_rows[0] if data storage call_stack: this.set_rows[0] run function dt.array:api/split/can_map_values_to_sets
execute unless data storage call_stack: this.fail if data storage call_stack: this.item_rows[0] if data storage call_stack: this.set_rows[0] unless data storage call_stack: call.return run data modify storage call_stack: this.fail set value true

execute unless data storage call_stack: this.fail run scoreboard players set #items_match dt.crafting.tmp 1
execute unless data storage call_stack: this.fail run data modify storage call_stack: this.return set value true
function call_stack:pop