function call_stack:push
data modify storage call_stack: this.test_name set value "add_to_cache_full"
data modify storage call_stack: this.input1 set value [1,2,3,4,5,6,7,8,9,10]
data modify storage call_stack: this.input2 set value 10
data modify storage call_stack: this.input3 set value 99
data modify storage call_stack: this.expected set value [99,1,2,3,4,5,6,7,8,9]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input1
data modify storage call_stack: call.arg1 set from storage call_stack: this.input2
data modify storage call_stack: call.arg2 set from storage call_stack: this.input3
function dt.crafting:internal/cache/add_to_cache
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "add_to_cache_partial"
data modify storage call_stack: this.input1 set value [1,2,3,4,5]
data modify storage call_stack: this.input2 set value 10
data modify storage call_stack: this.input3 set value 99
data modify storage call_stack: this.expected set value [99,1,2,3,4,5]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input1
data modify storage call_stack: call.arg1 set from storage call_stack: this.input2
data modify storage call_stack: call.arg2 set from storage call_stack: this.input3
function dt.crafting:internal/cache/add_to_cache
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "add_to_cache_empty"
data modify storage call_stack: this.input1 set value []
data modify storage call_stack: this.input2 set value 10
data modify storage call_stack: this.input3 set value 99
data modify storage call_stack: this.expected set value [99]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input1
data modify storage call_stack: call.arg1 set from storage call_stack: this.input2
data modify storage call_stack: call.arg2 set from storage call_stack: this.input3
function dt.crafting:internal/cache/add_to_cache
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop