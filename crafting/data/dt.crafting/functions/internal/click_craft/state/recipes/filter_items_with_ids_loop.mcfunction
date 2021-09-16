function call_stack:push
data modify storage call_stack: this.items set from storage call_stack: this.arg0
data modify storage call_stack: this.item_ids set from storage call_stack: this.arg1
data modify storage call_stack: this.filtered_items set value []
data modify storage call_stack: this.filtered_items set from storage call_stack: this.arg2

execute if data storage call_stack: this.item_ids[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.result set from storage call_stack: this.filtered_items
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set value {id:""}
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1.id set from storage call_stack: this.item_ids[0]
execute if data storage call_stack: this.continue run function dt.array:api/split_by_key
execute if data storage call_stack: this.continue run data modify storage call_stack: this.matches set from storage call_stack: call.result[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: this.non_matches set from storage call_stack: call.result[1]
execute if data storage call_stack: this.continue run data modify storage call_stack: this.filtered_items append from storage call_stack: this.matches[]
execute if data storage call_stack: this.continue run data remove storage call_stack: this.item_ids[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.non_matches
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.item_ids
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg2 set from storage call_stack: this.filtered_items
execute if data storage call_stack: this.continue run function dt.crafting:internal/click_craft/state/recipes/filter_items_with_ids_loop
execute if data storage call_stack: this.continue run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop