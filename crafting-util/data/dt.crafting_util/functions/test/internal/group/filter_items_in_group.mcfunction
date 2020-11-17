function call_stack:push
data modify storage call_stack: this.test_name set value "filter_items_in_group"
data modify storage call_stack: this.items set value [{id:"minecraft:oak_planks",count:4,slots:[0,1,3,4]},{id:"minecraft:stone",count:4,slots:[0,1,3,4]}]
data modify storage call_stack: this.group_values set from storage dt.crafting_util: recipe_tags[{group:"minecraft:planks"}].values
data modify storage call_stack: this.expected set value [{id:"minecraft:oak_planks",count:4,slots:[0,1,3,4]}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg1 set from storage call_stack: this.group_values
function dt.crafting_util:internal/group/filter_items_in_group
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop


function call_stack:push
data modify storage call_stack: this.test_name set value "filter_items_in_group_bad_items"
data modify storage call_stack: this.items set value [{id:"minecraft:foo",count:4,slots:[0,1,3,4]},{id:"minecraft:stone",count:4,slots:[0,1,3,4]}]
data modify storage call_stack: this.group_values set from storage dt.crafting_util: recipe_tags[{group:"minecraft:planks"}].values
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg1 set from storage call_stack: this.group_values
function dt.crafting_util:internal/group/filter_items_in_group
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "filter_items_in_group_bad_group_values"
data modify storage call_stack: this.items set value [{id:"minecraft:foo",count:4,slots:[0,1,3,4]},{id:"minecraft:stone",count:4,slots:[0,1,3,4]}]
data modify storage call_stack: this.group_values set value ["aaa","bbb"]
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.items
data modify storage call_stack: call.arg1 set from storage call_stack: this.group_values
function dt.crafting_util:internal/group/filter_items_in_group
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop