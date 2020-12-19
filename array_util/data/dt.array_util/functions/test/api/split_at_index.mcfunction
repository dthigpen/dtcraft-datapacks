function call_stack:push
data modify storage call_stack: this.test_name set value "array_split_at_index"
data modify storage call_stack: this.array set value [0,1,2,3,4,5,6,7]
data modify storage call_stack: this.key set value 3
data modify storage call_stack: this.expected set value {before:[0,1,2],at:3,after:[4,5,6,7]}

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set from storage call_stack: this.key
function dt.array_util:api/split_at_index
data modify storage call_stack: this.actual set from storage call_stack: call.result

#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "array_split_at_index_neg"
data modify storage call_stack: this.array set value [0,1,2,3,4,5,6,7]
data modify storage call_stack: this.key set value -1
data modify storage call_stack: this.expected set value {before:[],at:{},after:[0,1,2,3,4,5,6,7]}

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set from storage call_stack: this.key
function dt.array_util:api/split_at_index
data modify storage call_stack: this.actual set from storage call_stack: call.result

#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "array_split_at_index_out"
data modify storage call_stack: this.array set value [0,1,2,3,4,5,6,7]
data modify storage call_stack: this.key set value 99
data modify storage call_stack: this.expected set value {before:[],at:{},after:[0,1,2,3,4,5,6,7]}

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
data modify storage call_stack: call.arg1 set from storage call_stack: this.key
function dt.array_util:api/split_at_index
data modify storage call_stack: this.actual set from storage call_stack: call.result

#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop