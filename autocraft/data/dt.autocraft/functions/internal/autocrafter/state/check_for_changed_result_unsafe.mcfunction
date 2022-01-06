## If there is a placeholder, check if the count is different
# execute if block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] run data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafter_data.result_placeholder
# execute if block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] run data remove storage call_stack: call.arg0.Count
# execute if block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] run data modify storage call_stack: call.arg1 set from block ~ ~ ~ Items[{Slot:15b}]
# execute if block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] run data remove storage call_stack: call.arg1.Count
# execute if block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] run function dt.array:api/helper/are_equal
# execute if block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] if data storage call_stack: call.return run data modify storage call_stack: this.changed_result set value true
# execute if block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] if data storage call_stack: this.changed_result run say CHANGED PLACEHOLDER
execute if data block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] store result score #size1 dt.tmp run data get storage call_stack: this.autocrafter_data.result_placeholder.Count
execute if data block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] store result score #size2 dt.tmp run data get block ~ ~ ~ Items[{Slot:15b}].Count
execute if data block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] unless score #size1 dt.tmp = #size2 dt.tmp run data modify storage call_stack: this.diff_count set value true

# if different count, remove tag
execute if data storage call_stack: this.diff_count run data remove block ~ ~ ~ Items[{Slot:15b}].tag.dt
data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items[{Slot:15b}].tag
data modify storage call_stack: call.arg1 set value {}
function dt.array:api/helper/are_equal
execute if data storage call_stack: call.return run data remove block ~ ~ ~ Items[{Slot:15b}].tag

## if there is a non placeholder or no item in the slot, set ingredients from storage
execute if data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] run function dt.autocraft:internal/autocrafter/crafting/replace_ingredients_from_storage_unsafe
execute unless data block ~ ~ ~ Items[{Slot:15b}] run function dt.autocraft:internal/autocrafter/crafting/replace_ingredients_from_storage_unsafe