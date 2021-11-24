function call_stack:push

# say --- handling empty result slot
## Algorithm
# check storage
# if there is ingredient/recipe data in storage, decrement the ingredients
# check if ingredients make a valid recipe
# if so, store the ingredients and result to storage and result to slot 15b
# if not, take no action



## case 1: the result was "crafted"
## case 2: the result was pulled by a hopper below
execute if data block ~ ~-1 ~ Items[{tag:{dt_autocraft:{result:true}}}] run data modify storage call_stack: this.crafted_item set value true
execute if data block ~ ~-1 ~ Items[{tag:{dt_autocraft:{result:true}}}] run data remove block ~ ~-1 ~ Items[{tag:{dt_autocraft:{result:true}}}].tag.dt_autocraft
## case 1b: the result was taken by a player
### TODO player cursor and inventory logic
# execute if entity @a[distance=..6, sort=nearest] run data modify storage call_stack: this.crafted_item set value true
# execute as @a[distance=..6, sort=nearest] run data modify storage call_stack: this.crafted_item set value true
# execute if data storage call_stack: this.autocrafter_data.state_data.result run say I have state data!

execute if data storage call_stack: this.crafted_item run function dt.autocraft:internal/blocks/autocrafter/crafting/create_result_placeholder

function call_stack:pop