function call_stack:push
data modify storage call_stack: this.recipe_item set from storage call_stack: this.arg0

function dt.crafting:internal/click_craft/database/fetch_or_init
data modify storage call_stack: this.data set from storage call_stack: call.result
data modify storage call_stack: this.data.recipes set value []
data modify storage call_stack: call.arg0 set from storage call_stack: this.data
function dt.crafting:internal/click_craft/database/save

# transition state to crafting and reshow
scoreboard players operation @s dt.craft.state = #craft dt.craft.state

function call_stack:pop