function call_stack:push

# TODO move this to crafting
function dt.autocraft:internal/dev/clear_cache_self
data modify storage call_stack: this.test_name set value "find_nine_ingredient_shaped"
data modify storage call_stack: this.input set value [{id:"minecraft:white_carpet",Slot:0b,Count:1b},{id:"minecraft:white_carpet",Slot:1b,Count:1b},{id:"minecraft:white_carpet",Slot:2b,Count:1b}, {id:"minecraft:white_carpet",Slot:3b,Count:1b}, {id:"minecraft:white_carpet",Slot:5b,Count:1b},{id:"minecraft:white_carpet",Slot:6b,Count:1b},{id:"minecraft:white_carpet",Slot:7b,Count:1b},{id:"minecraft:white_carpet",Slot:8b,Count:1b}, {id:"minecraft:black_dye",Slot:4b,Count:1b}]
data modify storage call_stack: this.expected set value {}
data modify storage call_stack: this.expected set from storage dt.crafting: recipes[{result:{id:"minecraft:black_carpet"}}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/recipe/find_with_cache
data modify storage call_stack: this.actual set from storage call_stack: call.return

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push

# TODO move this to crafting
function dt.autocraft:internal/dev/clear_cache_self
data modify storage call_stack: this.test_name set value "find_nine_ingredient_shapeless"
data modify storage call_stack: this.input set value [{id:"minecraft:sand",Slot:0b,Count:1b},{id:"minecraft:sand",Slot:1b,Count:1b},{id:"minecraft:sand",Slot:2b,Count:1b},{id:"minecraft:sand",Slot:3b,Count:1b},{id:"minecraft:gravel",Slot:4b,Count:1b},{id:"minecraft:gravel",Slot:5b,Count:1b},{id:"minecraft:gravel",Slot:6b,Count:1b},{id:"minecraft:gravel",Slot:7b,Count:1b},{id:"minecraft:orange_dye",Slot:9b,Count:1b}]
data modify storage call_stack: this.expected set value {}
data modify storage call_stack: this.expected set from storage dt.crafting: recipes[{result:{id:"minecraft:orange_concrete_powder"}}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/recipe/find_with_cache
data modify storage call_stack: this.actual set from storage call_stack: call.return

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop