function call_stack:push

function dt.autocraft:internal/autocrafter/database/fetch_or_init
data modify storage call_stack: this.autocrafter_data set from storage call_stack: call.return
data remove storage call_stack: this.autocrafter_data.state_data

## TODO reduce items to grid
function dt.autocraft:internal/util/get_crafting_grid_items
data modify storage call_stack: this.ingredients set from storage call_stack: call.return
data modify storage call_stack: call.arg0 set from storage call_stack: this.ingredients
function dt.crafting:api/craft/from_items
data modify storage call_stack: this.new_ingredients set from storage call_stack: call.return[0]
data modify storage call_stack: this.result_item set from storage call_stack: call.return[1][0]
execute if data storage call_stack: this.result_item run data modify storage call_stack: this.result_item.Slot set value 15b
execute if data storage call_stack: this.result_item run data modify storage call_stack: this.result_item.tag.dt.type set value "result_placeholder"
data remove block ~ ~ ~ Items[{Slot:15b}]
execute if data storage call_stack: this.result_item run data modify block ~ ~ ~ Items append from storage call_stack: this.result_item
execute if data storage call_stack: this.result_item run data modify storage call_stack: this.autocrafter_data.state_data.result set from storage call_stack: this.result_item
execute if data storage call_stack: this.result_item run data modify storage call_stack: this.autocrafter_data.state_data.ingredients set from storage call_stack: this.new_ingredients
execute if data storage call_stack: this.result_item run data modify storage call_stack: this.autocrafter_data.state_data.items set from storage call_stack: this.ingredients

data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafter_data
function dt.autocraft:internal/autocrafter/database/save

function call_stack:pop