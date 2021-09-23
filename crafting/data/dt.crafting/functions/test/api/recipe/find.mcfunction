function call_stack:push

data modify storage call_stack: this.test_name set value "find_recipe_stone_button"
data modify storage call_stack: this.input set value [{id:"minecraft:stone",Slot:0b,Count:1b}]
data modify storage call_stack: this.expected set from storage dt.crafting: recipes[{result:{id:"minecraft:stone_button"}}]
# data modify storage call_stack: this.expected set value {"ingredients": [{"count": 1, "id": "minecraft:stone", "type": "id"}], "result": {"id": "minecraft:stone_button", "count": 1}, "type": "shapeless"}

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/recipe/find
data modify storage call_stack: this.actual set from storage call_stack: call.return

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push

data modify storage call_stack: this.test_name set value "find_recipe_stone_sword"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:3b,Count:1b},{id:"minecraft:stick",Slot:6b,Count:1b}]
data modify storage call_stack: this.expected set from storage dt.crafting: recipes[{result:{id:"minecraft:stone_sword"}}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/recipe/find
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop


function call_stack:push

data modify storage call_stack: this.test_name set value "find_recipe_bad_recipe"
data modify storage call_stack: this.input set value [{id:"minecraft:slime_ball",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:3b,Count:1b},{id:"minecraft:stick",Slot:6b,Count:1b}]
data modify storage call_stack: this.expected set value {}

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/recipe/find
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop





















#execute if data storage dt.crafting: recipes[0] run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipes
#execute if data storage dt.crafting: recipes[0] run function dt.crafting:test/internal/recipe/test_find_loop
#
#function call_stack:push
#data modify storage call_stack: this.test_name set value "find_recipe_tag"
#data modify storage call_stack: this.input set value [{id:"minecraft:oak_planks",Slot:0b,Count:1b},{id:"minecraft:oak_planks",Slot:1b,Count:1b},{id:"minecraft:oak_planks",Slot:3b,Count:1b},{id:"minecraft:oak_planks",Slot:4b,Count:1b}]
#data modify storage call_stack: this.expected set value {"ingredients": [{"count": 4, "tag": "minecraft:planks", "type": "tag", "slots": [[0, 1, 3, 4], [1, 2, 4, 5], [3, 4, 6, 7], [4, 5, 7, 8]]}], "result": {"id": "minecraft:crafting_table", "count": 1}, "type": "shaped"}
#
#data modify storage call_stack: call.arg0 set from storage call_stack: this.input
#function dt.crafting:api/recipe/find
#data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
#execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
#
#execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
#execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
#function call_stack:pop