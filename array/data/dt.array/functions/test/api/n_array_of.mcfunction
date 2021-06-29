function call_stack:push
data modify storage call_stack: this.test_name set value "array_n_array_of"
data modify storage call_stack: this.length set value 3
data modify storage call_stack: this.value set value 42
data modify storage call_stack: this.expected set value [42,42,42]

data modify storage call_stack: call.arg0 set from storage call_stack: this.length
data modify storage call_stack: call.arg1 set from storage call_stack: this.value
function dt.array:api/n_array_of
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "array_n_array_of_empty"
data modify storage call_stack: this.length set value 0
data modify storage call_stack: this.value set value 999
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.length
data modify storage call_stack: call.arg1 set from storage call_stack: this.value
function dt.array:api/n_array_of
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "array_n_array_of_obj"
data modify storage call_stack: this.length set value 2
data modify storage call_stack: this.value set value {foo:bar}
data modify storage call_stack: this.expected set value [{foo:bar},{foo:bar}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.length
data modify storage call_stack: call.arg1 set from storage call_stack: this.value
function dt.array:api/n_array_of
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop