function call_stack:push
say changed placeholder
function dt.autocraft:internal/blocks/autocrafter/database/fetch_or_init
data modify storage call_stack: this.autocrafter_data set from storage call_stack: call.return

## Check that the items have changed before recrafting
data modify storage call_stack: this.temp set from storage call_stack: this.autocrafter_data.state_data.items
data remove storage call_stack: this.temp[].Count
function dt.autocraft:internal/util/get_crafting_grid_items
data modify storage call_stack: this.ingredients set from storage call_stack: call.return
data remove storage call_stack: this.ingredients[].Count
scoreboard players reset #changed dt.tmp
execute store success score #changed dt.tmp run data modify storage call_stack: this.temp set from storage call_stack: this.ingredients
execute if score #changed dt.tmp matches 1 run function dt.autocraft:internal/blocks/autocrafter/crafting/create_result_placeholder



function call_stack:pop