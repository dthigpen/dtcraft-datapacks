
function call_stack:push
data modify storage call_stack: this.test_name set value "split_half_empty_list"
data modify storage call_stack: this.array set value []
data modify storage call_stack: this.expected set value [[],[]]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/split_half
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop


function call_stack:push
data modify storage call_stack: this.test_name set value "split_half_list_of_1"
data modify storage call_stack: this.array set value [1]
data modify storage call_stack: this.expected set value [[],[1]]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/split_half
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop


function call_stack:push
data modify storage call_stack: this.test_name set value "split_half_list_of_two"
data modify storage call_stack: this.array set value [1,2]
data modify storage call_stack: this.expected set value [[1],[2]]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/split_half
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "split_half_list_of_5"
data modify storage call_stack: this.array set value [1,2,3,4,5]
data modify storage call_stack: this.expected set value [[1,2],[3,4,5]]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/split_half
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "split_half_list_of_6"
data modify storage call_stack: this.array set value [1,2,3,4,5,6]
data modify storage call_stack: this.expected set value [[1,2,3],[4,5,6]]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/split_half
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop