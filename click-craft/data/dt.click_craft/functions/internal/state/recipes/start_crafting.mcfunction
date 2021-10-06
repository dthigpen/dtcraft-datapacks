function call_stack:push
data modify storage call_stack: this.recipe_item set from storage call_stack: this.arg0

function dt.click_craft:internal/database/fetch_or_init
data modify storage call_stack: this.data set from storage call_stack: call.return
data modify storage call_stack: this.data.recipes set value []
data modify storage call_stack: call.arg0 set from storage call_stack: this.data
function dt.click_craft:internal/database/save

# transition state to crafting and reshow
scoreboard players operation @s dt.craft.state = #craft dt.craft.state

function call_stack:pop