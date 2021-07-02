function call_stack:push
# always do these things
data modify storage call_stack: this.items set from block ~ ~ ~ Items
data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
function dt.crafting:api/crafter/distribute_items
data modify block ~ ~ ~ Items set from storage call_stack: call.result

# decrement cooldown
# reset if use before cooldown period
#execute if score @s dt.ac.state = #cooldown dt.ac.state run say cooling down..
execute positioned ~ ~-1 ~ if score @s dt.ac.state = #cooldown dt.ac.state if block ~ ~ ~ hopper run scoreboard players operation @s dt.ac.cooldown -= #rate dt.ac.cooldown
execute positioned ~ ~-1 ~ if score @s dt.ac.state = #cooldown dt.ac.state unless block ~ ~ ~ hopper if entity @e[predicate=dt.autocraft:hopper_minecraft,limit=1,sort=nearest] run scoreboard players operation @s dt.ac.cooldown -= #rate dt.ac.cooldown

# punish if powered during cooldown by resetting to max cooldown
#execute if score @s dt.ac.state = #cooldown dt.ac.state if score @s dt.ac.cooldown matches 1.. if block ~ ~ ~ minecraft:hopper[enabled=true] run scoreboard players operation @s dt.ac.cooldown = #max dt.ac.cooldown
#execute if score @s dt.ac.state = #cooldown dt.ac.state run say @a[distance=..5] cooldown!
# do nothing for ready
#execute if score @s dt.ac.state = #ready dt.ac.state run say @a[distance=..5] ready!


# Add tags when in a locked state and remove tags from items below
execute unless score @s dt.ac.state = #craft dt.ac.state positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/add_tags_to_block_items
execute unless score @s dt.ac.state = #craft dt.ac.state positioned ~ ~-1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items

# Remove tags from items that were transfered to surrounding blocks
execute unless score @s dt.ac.state = #craft dt.ac.state if block ~ ~ ~ dropper[facing=up] positioned ~ ~1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items
execute unless score @s dt.ac.state = #craft dt.ac.state if block ~ ~ ~ dropper[facing=west] positioned ~-1 ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items
execute unless score @s dt.ac.state = #craft dt.ac.state if block ~ ~ ~ dropper[facing=east] positioned ~1 ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items
execute unless score @s dt.ac.state = #craft dt.ac.state if block ~ ~ ~ dropper[facing=south] positioned ~ ~ ~1 run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items
execute unless score @s dt.ac.state = #craft dt.ac.state if block ~ ~ ~ dropper[facing=north] positioned ~ ~ ~-1 run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items

#execute unless score @s dt.ac.state = #craft dt.ac.state run say waiting
#execute if score @s dt.ac.state = #craft dt.ac.state run say crafting

# try to craft
# First update tags to reflect new positions
execute if score @s dt.ac.state = #craft dt.ac.state positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/update_existing_placeholders
# Get placeholders from hopper below
# Get the tagged items from the block below then remove those items
execute if score @s dt.ac.state = #craft dt.ac.state positioned ~ ~-1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/get_tagged_items
execute if score @s dt.ac.state = #craft dt.ac.state run data modify storage call_stack: this.tagged_items_from_below set from storage call_stack: call.result


execute if score @s dt.ac.state = #craft dt.ac.state run data modify storage call_stack: call.arg0 set from storage call_stack: this.tagged_items_from_below
execute if score @s dt.ac.state = #craft dt.ac.state positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/add_back_tagged_items
execute if score @s dt.ac.state = #craft dt.ac.state positioned ~ ~ ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tags_from_items

#execute if score @s dt.ac.state = #craft dt.ac.state run tellraw @a[distance=..5] [{"text":"Items: "},{"nbt":"Items","block":"~ ~ ~"}]
#execute if score @s dt.ac.state = #craft dt.ac.state run tellraw @a[distance=..5] [{"text":"Below: "},{"nbt":"Items","block":"~ ~-1 ~"}]
execute if score @s dt.ac.state = #craft dt.ac.state run function dt.autocraft:internal/blocks/autocrafter/try_craft

# Remove tagged items after attempted craft since a successful craft may replace items that dropped below
execute if score @s dt.ac.state = #craft dt.ac.state positioned ~ ~-1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/remove_tagged_items

function call_stack:pop