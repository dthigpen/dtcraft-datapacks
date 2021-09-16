say handle_selection
function call_stack:push
tellraw @p ["handle_selection.mcfunction: ",{"score":{"name":"@s","objective":"dt.craft.state"}}]
# Set argument for any state functions that will be called
execute store result storage call_stack: call.arg0 int 1 run scoreboard players get @s dt.cc.select
function dt.crafting:internal/click_craft/id_to_item
data modify storage call_stack: call.arg0 set from storage call_stack: call.result
execute if score @s dt.craft.state = #inventory dt.craft.state run function dt.crafting:internal/click_craft/state/inventory/add_ingredient
execute if score @s dt.craft.state = #recipes dt.craft.state run function dt.crafting:internal/click_craft/state/recipes/start_crafting

function call_stack:pop