function call_stack:push

data modify storage call_stack: this.test_name set value "find_ingredient_loop_bad"
data modify storage call_stack: this.input set value [{id:"minecraft:stone",slots:[2,3], count: 2}]
data modify storage call_stack: this.expected set value {is_match:false, remaining:[{id:"minecraft:stone",slots:[2,3], count: 2}]}

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
data modify storage call_stack: call.arg1 set value [{count: 5, slots: [[0, 1, 2, 3, 5]], id: "minecraft:glass", type: "id"}, {count: 1, slots: [[4]], id: "minecraft:nether_star", type: "id"}, {count: 3, slots: [[6, 7, 8]], id: "minecraft:obsidian", type: "id"}]
data modify storage call_stack: call.arg2 set value []
data modify storage call_stack: call.arg3 set value true
function dt.crafting:internal/recipe/find_ingredient_loop
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop