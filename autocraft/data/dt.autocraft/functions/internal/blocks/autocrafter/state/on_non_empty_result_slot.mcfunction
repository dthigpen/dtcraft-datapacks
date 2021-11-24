# say --- handling non empty result slot
## TODO maybe check the result is the expected one?

function dt.autocraft:internal/blocks/autocrafter/database/fetch_or_init
data modify storage call_stack: this.autocrafter_data set from storage call_stack: call.return

## case 1: Item in result slot is different than the stored item. Now decrement the ingredients
scoreboard players reset #changed dt.tmp
execute if data storage call_stack: this.autocrafter_data.state_data.ingredients run data modify storage call_stack: this.stored_result set from storage call_stack: this.autocrafter_data.state_data.result
execute if data storage call_stack: this.autocrafter_data.state_data.ingredients store success score #changed dt.tmp run data modify storage call_stack: this.stored_result set from block ~ ~ ~ Items[{Slot:15b}]
execute if data storage call_stack: this.changed_result run say player swapped the result!
execute if data storage call_stack: this.changed_result run data modify storage call_stack: this.changed_result set value true
execute if data storage call_stack: this.changed_result run data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafter_data.state_data.ingredients
execute if data storage call_stack: this.changed_result run function dt.autocraft:internal/blocks/autocrafter/crafting/set_ingredients
execute if data storage call_stack: this.changed_result run data remove storage call_stack: this.autocrafter_data.state_data


data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafer_data
function dt.autocraft:internal/blocks/autocrafter/database/save