function call_stack:push

# TODO move this to crafting
function dt.autocraft:internal/dev/clear_cache_self
data modify storage call_stack: this.test_name set value "find_two_ingredient_shaped"
data modify storage call_stack: this.input set value [{id:"minecraft:coal",Slot:0b,Count:1b}, {id:"minecraft:stick",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set from storage dt.crafting: recipe_tree.2.2[{return:{id:"minecraft:torch"}}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/recipe/find_with_cache
data modify storage call_stack: this.actual set from storage call_stack: call.return
tellraw @p ["good_two_ingredients.mcfunction: ",{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push

# TODO move this to crafting
function dt.autocraft:internal/dev/clear_cache_self
data modify storage call_stack: this.test_name set value "find_two_ingredient_shapeless"
data modify storage call_stack: this.input set value [{id:"minecraft:gray_dye",Slot:0b,Count:1b}, {id:"minecraft:white_bed",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set from storage dt.crafting: recipe_tree.2.2[{return:{id:"minecraft:gray_bed"}}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/recipe/find_with_cache
data modify storage call_stack: this.actual set from storage call_stack: call.return

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop