function call_stack:push

data modify storage call_stack: this.test_name set from storage call_stack: this.arg0
data modify storage call_stack: this.input set from storage call_stack: this.arg1
data modify storage call_stack: this.expected set from storage call_stack: this.arg2

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting_util:api/recipe/find
data modify storage call_stack: this.actual set from storage call_stack: call.result
tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop