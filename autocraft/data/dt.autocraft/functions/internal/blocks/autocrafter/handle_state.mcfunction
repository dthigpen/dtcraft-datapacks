# always do these things
function call_stack:push
data modify storage call_stack: this.items set from block ~ ~ ~ Items
data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
function dt.crafting_util:api/crafter/distribute_items
data modify block ~ ~ ~ Items set from storage call_stack: call.result

# decrement cooldown
# reset if use before cooldown period
#execute if score @s dt.ac.state = #cooldown dt.ac.state run say cooling down..
execute if score @s dt.ac.state = #cooldown dt.ac.state if block ~ ~-1 ~ hopper[enabled=false] run scoreboard players operation @s dt.ac.cooldown -= #rate dt.ac.cooldown
# decrement cooldown even if powered
execute if score @s dt.ac.state = #cooldown dt.ac.state if block ~ ~-1 ~ hopper[enabled=true] run scoreboard players operation @s dt.ac.cooldown -= #rate dt.ac.cooldown
# punish if powered during cooldown by resetting to max cooldown
#execute if score @s dt.ac.state = #cooldown dt.ac.state if score @s dt.ac.cooldown matches 1.. if block ~ ~ ~ minecraft:hopper[enabled=true] run scoreboard players operation @s dt.ac.cooldown = #max dt.ac.cooldown
#execute if score @s dt.ac.state = #cooldown dt.ac.state run say @a[distance=..5] cooldown!
# do nothing for ready
#execute if score @s dt.ac.state = #ready dt.ac.state run say @a[distance=..5] ready!

# Add placeholder tags when not in crafting state
execute unless score @s dt.ac.state = #craft dt.ac.state run function dt.autocraft:internal/blocks/autocrafter/placeholders/add_tags_to_block
execute unless score @s dt.ac.state = #craft dt.ac.state positioned ~ ~-1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_block
# try to craft
# Get placeholders from hopper below
# Add back to this block
execute if score @s dt.ac.state = #craft dt.ac.state positioned ~ ~-1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/get_from_block
execute if score @s dt.ac.state = #craft dt.ac.state positioned ~ ~-1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_from_block
execute if score @s dt.ac.state = #craft dt.ac.state positioned ~ ~-1 ~ run data modify storage call_stack: call.arg0 set from storage call_stack: call.result
execute if score @s dt.ac.state = #craft dt.ac.state positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/replace_in_block
execute if score @s dt.ac.state = #craft dt.ac.state positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_block

#execute if score @s dt.ac.state = #craft dt.ac.state run tellraw @a[distance=..5] [{"text":"Items: "},{"nbt":"Items","block":"~ ~ ~"}]
#execute if score @s dt.ac.state = #craft dt.ac.state run tellraw @a[distance=..5] [{"text":"Below: "},{"nbt":"Items","block":"~ ~-1 ~"}]
execute if score @s dt.ac.state = #craft dt.ac.state run function dt.autocraft:internal/blocks/autocrafter/try_craft

function call_stack:pop