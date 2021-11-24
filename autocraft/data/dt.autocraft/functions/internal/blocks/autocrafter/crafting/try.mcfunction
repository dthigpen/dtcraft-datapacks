function call_stack:push
data modify storage call_stack: this.recipe_result set value {}

# only craft if there are no stacks
function dt.autocraft:internal/util/get_items_from_block_or_entity
data modify storage call_stack: this.items set from storage call_stack: call.return

## TODO update is_eligible to allow item stacks after move to barrel crafting
data modify storage call_stack: call.arg0 set from storage call_stack: this.items
function dt.crafting:api/recipe/is_eligible
execute if data storage call_stack: {call:{return:true}} run data modify storage call_stack: this.can_craft set value true
execute if data storage call_stack: this.can_craft if data block ~ ~ ~ Items[{Slot:15b}] run data remove storage call_stack: this.can_craft
# execute if data storage call_stack: this.can_craft run function dt.autocraft:internal/blocks/autocrafter/database/fetch_or_init
# execute if data storage call_stack: this.can_craft run data modify storage call_stack: this.autocrafter_data set from storage call_stack: call.return
# execute if data storage call_stack: this.can_craft if data storage call_stack: {this:{autocrafter_data:{is_item_specific:true}}} run data modify storage call_stack: this.item_specific set value true

# execute if data storage call_stack: this.can_craft run function dt.autocraft:internal/blocks/autocrafter/crafting/shift_item_slots_unsafe
execute if data storage call_stack: this.can_craft run data modify storage call_stack: call.arg0 set from storage call_stack: this.items
execute if data storage call_stack: this.can_craft run function dt.crafting:api/craft/from_items
# execute if data storage call_stack: call.return[1][0] run tellraw @p ["try this.items: ",{"nbt":"call.return","storage":"call_stack:"}]
execute if data storage call_stack: this.can_craft run data modify storage call_stack: this.new_items set from storage call_stack: call.return[0]
execute if data storage call_stack: this.can_craft run data modify storage call_stack: this.result_item set from storage call_stack: call.return[1][0]
execute if data storage call_stack: this.can_craft if data storage call_stack: this.result_item run data modify storage call_stack: this.found_recipe set value true

# Execute if recipe was found regardless of method
## Overwrite barrel items with the result
# execute if data storage call_stack: this.found_recipe run data modify block ~ ~ ~ Items set value []

## TODO TODO TODO
# always set the result in Slot:15
# then check if it can be force pulled to the hopper below
# then decrement item counts if not in crafter anymore

## Update State
# _ + !found = invalid_recipe
# invalid_recipe + found = valid_recipe, set state data
function dt.autocraft:internal/blocks/autocrafter/database/fetch_or_init
data modify storage call_stack: this.autocrafter_data set from storage call_stack: call.return
execute unless data storage call_stack: this.found_recipe run data modify storage call_stack: this.autocrafter_data.state set value 'invalid_recipe'

execute if data storage call_stack: {this:{autocrafter_data:{state:"invalid_recipe"}}} unless data storage call_stack: this.found_recipe run data modify storage call_stack: this.autocrafter_data.state set value 'invalid_recipe'

## try looting to the hopper in case there are free spots or spots with the result already
# execute if data storage call_stack: this.found_recipe run data modify block ~ ~ ~ Items set from storage call_stack: this.new_items
execute if data storage call_stack: this.found_recipe run data modify block ~ ~ ~ Items[{Slot:15b}] set from storage call_stack: this.result_item
execute if data storage call_stack: this.found_recipe run tellraw @p ["try this.result_item: ",{"nbt":"this.result_item","storage":"call_stack:"}]
# execute if data storage call_stack: this.found_recipe run data modify storage call_stack: call.arg0 set value []
# execute if data storage call_stack: this.found_recipe run data modify storage call_stack: call.arg0 append from storage call_stack: this.result_item
# execute if data storage call_stack: this.found_recipe run function dt.inventory:api/shulker/items/set
# execute if data storage call_stack: this.found_recipe positioned ~ ~-1 ~ run data modify storage call_stack: this.items_before set from block ~ ~ ~ Items
# execute if data storage call_stack: this.found_recipe positioned ~ ~-1 ~ run function dt.inventory:api/shulker/loot/insert/block
# execute if data storage call_stack: this.found_recipe positioned ~ ~-1 ~ run data modify storage call_stack: this.items_after set from block ~ ~ ~ Items
# execute if data storage call_stack: this.found_recipe run scoreboard players reset $looted dt.tmp
# execute if data storage call_stack: this.found_recipe store success score $looted dt.tmp run data modify storage call_stack: this.items_after set from storage call_stack: this.items_before
# execute if data storage call_stack: this.found_recipe if score $looted dt.tmp matches 0 run data modify block ~ ~ ~ Items[{Slot:15b}] set from storage call_stack: this.result_item

## TODO fix support for hopper minecart

function call_stack:pop