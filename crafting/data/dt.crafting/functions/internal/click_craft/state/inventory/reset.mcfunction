function call_stack:push
say reset
function dt.crafting:internal/click_craft/database/fetch_or_init
data modify storage call_stack: this.data set from storage call_stack: call.result
data modify storage call_stack: this.data.craft_with set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.data
function dt.crafting:internal/click_craft/database/save

# reshow the inventory screen again
scoreboard players operation @s dt.click_craft = #inventory dt.craft.state
function dt.crafting:internal/click_craft/state/inventory/set

function call_stack:pop