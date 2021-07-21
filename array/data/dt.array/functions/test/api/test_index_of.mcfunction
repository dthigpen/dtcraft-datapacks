function call_stack:push
data modify storage call_stack: this.test_name set value "index_of_empty_list"
data modify storage call_stack: this.array set value []
data modify storage call_stack: this.expected set value -1

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set value 3
function dt.array:api/index_of
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "index_of_list_of_6"
data modify storage call_stack: this.array set value [1,2,3,4,5,6]
data modify storage call_stack: this.expected set value 2

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set value 3
function dt.array:api/index_of
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "index_of_list_of_6_not_found"
data modify storage call_stack: this.array set value [1,2,3,4,5,6]
data modify storage call_stack: this.expected set value -1

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set value 99
function dt.array:api/index_of
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop