function call_stack:push
data modify storage call_stack: this.test_name set value "resolve_tags"
data modify storage call_stack: this.tags set value [{"count": 4, "tag": "minecraft:planks", "type": "tag", "slots": [[0, 1, 3, 4], [1, 2, 4, 5], [3, 4, 6, 7], [4, 5, 7, 8]]}]
data modify storage call_stack: this.item_counts set value [{"count": 4, "id": "minecraft:oak_planks", "slots": [0, 1, 3, 4]}]
data modify storage call_stack: this.expected set value true

data modify storage call_stack: call.arg0 set from storage call_stack: this.tags
data modify storage call_stack: call.arg1 set from storage call_stack: this.item_counts
function dt.crafting_util:internal/recipe/resolve_tags
data modify storage call_stack: this.actual set from storage call_stack: call.result
tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop