say adding ingredient 
function call_stack:push

data modify storage call_stack: this.item set from storage call_stack: this.arg0

function dt.click_craft:internal/database/fetch_or_init
data modify storage call_stack: this.data set from storage call_stack: call.return

data modify storage call_stack: call.arg0 set from storage call_stack: this.data.craft_with
data modify storage call_stack: call.arg1 set from storage call_stack: this.item
function dt.array:api/index_of
data modify storage call_stack: this.index set from storage call_stack: call.return

tellraw @p ["add_ingredient.mcfunction: ",{"nbt":"this.index","storage":"call_stack:"}]
execute if data storage call_stack: {this:{index:-1}} run data modify storage call_stack: this.data.craft_with append from storage call_stack: this.item
execute if data storage call_stack: {this:{index:-1}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.data
execute if data storage call_stack: {this:{index:-1}} run function dt.click_craft:internal/database/save

# reshow the inventory screen again
scoreboard players operation @s dt.click_craft = #inventory dt.craft.state

function call_stack:pop