function call_stack:push
# always do these things
data modify storage call_stack: this.items set from block ~ ~ ~ Items

data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
function dt.crafting:api/crafter/distribute_items
data modify block ~ ~ ~ Items set from storage call_stack: call.result

execute if score @s dt.ac.state = #cooldown dt.ac.state run function dt.autocraft:internal/blocks/autocrafter/state/on_cooldown
execute unless score @s dt.ac.state = #craft dt.ac.state run function dt.autocraft:internal/blocks/autocrafter/state/on_not_craft
execute if score @s dt.ac.state = #craft dt.ac.state run function dt.autocraft:internal/blocks/autocrafter/state/on_craft




function call_stack:pop