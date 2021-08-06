function call_stack:push
data modify storage call_stack: this.test_name set value "trim_to_size_empty_list"
data modify storage call_stack: this.array set value []
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set value 1
function dt.array:api/trim_to_size
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "trim_to_size_equal"
data modify storage call_stack: this.array set value [1,2,3]
data modify storage call_stack: this.expected set value [1,2,3]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set value 3
function dt.array:api/trim_to_size
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "trim_to_size_less_than"
data modify storage call_stack: this.array set value [1,2,3]
data modify storage call_stack: this.expected set value [1,2,3]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set value 5
function dt.array:api/trim_to_size
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "trim_to_size_greater_than"
data modify storage call_stack: this.array set value [1,2,3]
data modify storage call_stack: this.expected set value [1,2]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set value 2
function dt.array:api/trim_to_size
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "trim_to_size_0"
data modify storage call_stack: this.array set value [1,2,3]
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set value 0
function dt.array:api/trim_to_size
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "trim_to_size_negative"
data modify storage call_stack: this.array set value [1,2,3]
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set value -1
function dt.array:api/trim_to_size
data modify storage call_stack: this.actual set from storage call_stack: call.result
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop