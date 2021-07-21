function call_stack:push
data modify storage call_stack: this.test_name set value "merge_sort_empty_list"
data modify storage call_stack: this.array set value []
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/sort/merge_sort
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop


function call_stack:push
data modify storage call_stack: this.test_name set value "merge_sort_list_of_1"
data modify storage call_stack: this.array set value [{key:1,value:"foo"}]
data modify storage call_stack: this.expected set value [{key:1,value:"foo"}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/sort/merge_sort
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "merge_sort_list_of_2_unsorted"
data modify storage call_stack: this.array set value [{key:2,value:"bar"}, {key:1,value:"foo"}]
data modify storage call_stack: this.expected set value [{key:1,value:"foo"},{key:2,value:"bar"}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/sort/merge_sort
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop


function call_stack:push
data modify storage call_stack: this.test_name set value "merge_sort_list_of_2_sorted"
data modify storage call_stack: this.array set value [{key:1,value:"foo"},{key:2,value:"bar"}]
data modify storage call_stack: this.expected set value [{key:1,value:"foo"},{key:2,value:"bar"}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/sort/merge_sort
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "merge_sort_list_of_3_unsorted"
data modify storage call_stack: this.array set value [{key:3,value:"!!!"}, {key:2,value:"bar"}, {key:1,value:"foo"}]
data modify storage call_stack: this.expected set value [{key:1,value:"foo"},{key:2,value:"bar"},{key:3,value:"!!!"}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.array:api/sort/merge_sort
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop