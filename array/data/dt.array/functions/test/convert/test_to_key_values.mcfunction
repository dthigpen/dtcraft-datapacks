
function call_stack:push
data modify storage call_stack: this.test_name set value "key_values_empty_list"
data modify storage call_stack: this.array set value []
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/convert/to_key_values
data modify storage call_stack: this.actual set from storage call_stack: call.result
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop


function call_stack:push
data modify storage call_stack: this.test_name set value "key_values_list_of_1"
data modify storage call_stack: this.array set value ["foo"]
data modify storage call_stack: this.expected set value [{key:1,value:"foo"}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/convert/to_key_values
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "key_values_list_of_3"
data modify storage call_stack: this.array set value ["foo","bar","!!!"]
data modify storage call_stack: this.expected set value [{key:1,value:"foo"},{key:2,value:"bar"},{key:3,value:"!!!"}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/convert/to_key_values
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

