function call_stack:push
# always do these things

data modify storage call_stack: this.result_slot set from block ~ ~ ~ Items[{Slot:15b}]
data remove block ~ ~ ~ Items[{Slot:15b}]
data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
function dt.crafting:api/crafter/distribute_items
data modify block ~ ~ ~ Items set from storage call_stack: call.return
data modify block ~ ~ ~ Items append from storage call_stack: this.result_slot


function dt.autocraft:internal/blocks/autocrafter/database/fetch_or_init
data modify storage call_stack: this.autocrafter_data set from storage call_stack: call.return

scoreboard players reset #has_last_result dt.tmp
scoreboard players reset #block_result_item dt.tmp
scoreboard players reset #block_result_placeholder dt.tmp
scoreboard players reset #diff_placeholders dt.tmp

execute if data storage call_stack: this.autocrafter_data.state_data.result run scoreboard players set #has_last_result dt.tmp 1
execute if data block ~ ~ ~ Items[{Slot:15b}] run scoreboard players set #block_result_item dt.tmp 1
execute if score #block_result_item dt.tmp matches 1 if data block ~ ~ ~ Items[{Slot:15b, tag:{dt:{type:"result_placeholder"}}}] run scoreboard players set #block_result_placeholder dt.tmp 1
execute if score #block_result_placeholder dt.tmp matches 1 if score #has_last_result dt.tmp matches 1 run data modify storage call_stack: this.temp_item set from storage call_stack: this.autocrafter_data.state_data.result
execute if score #block_result_placeholder dt.tmp matches 1 if score #has_last_result dt.tmp matches 1 store success score #diff_placeholders dt.tmp run data modify storage call_stack: this.temp_item set from block ~ ~ ~ Items[{Slot:15b}]
# execute if data storage call_stack: this.

# tellraw @p ["on_craft2 #has_last_result:",{"score":{"name":"#has_last_result","objective":"dt.tmp"}}]
# tellraw @p ["on_craft2 #block_result_item:",{"score":{"name":"#block_result_item","objective":"dt.tmp"}}]
# tellraw @p ["on_craft2 #block_result_placeholder:",{"score":{"name":"#block_result_placeholder","objective":"dt.tmp"}}]
# tellraw @p ["on_craft2 #diff_placeholders:",{"score":{"name":"#diff_placeholders","objective":"dt.tmp"}}]

execute if score #has_last_result dt.tmp matches 1 unless score #block_result_item dt.tmp matches 1 run function dt.autocraft:internal/blocks/autocrafter/crafting/find_and_replace_placeholder
execute unless score #has_last_result dt.tmp matches 1 unless score #block_result_item dt.tmp matches 1 run function dt.autocraft:internal/blocks/autocrafter/crafting/create_result_placeholder
execute if score #has_last_result dt.tmp matches 1 if score #block_result_placeholder dt.tmp matches 1 run function dt.autocraft:internal/blocks/autocrafter/crafting/changed_placeholder
data modify storage call_stack: call.arg0 set from storage call_stack: this.autocrafer_data
function dt.autocraft:internal/blocks/autocrafter/database/save

function call_stack:pop