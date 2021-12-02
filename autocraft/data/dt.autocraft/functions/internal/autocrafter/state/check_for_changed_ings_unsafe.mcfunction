## Check that the items have changed before recrafting
function dt.autocraft:internal/util/get_crafting_grid_items
data modify storage call_stack: call.arg0 set from storage call_stack: call.return
data remove storage call_stack: call.arg0[].Count
data modify storage call_stack: call.arg1 set from storage call_stack: this.autocrafter_data.state_data.items
data remove storage call_stack: call.arg1[].Count
function dt.array:api/helper/are_equal
execute unless data storage call_stack: call.return run function dt.autocraft:internal/autocrafter/state/create_result_placeholder_unsafe
