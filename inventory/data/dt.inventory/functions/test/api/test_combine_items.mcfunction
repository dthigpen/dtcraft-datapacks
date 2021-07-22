
function call_stack:push
data modify storage call_stack: this.test_name set value "combine_items_empty_list"
data modify storage call_stack: this.array set value []
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/items/combine
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop


function call_stack:push
data modify storage call_stack: this.test_name set value "combine_items_list_of_2"
data modify storage call_stack: this.array set value [{id:"minecraft:feather",Count:1b, Slot:0b},{id:"minecraft:feather",Count:1b, Slot:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:feather",Count:2b, Slot:0b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/items/combine
data modify storage call_stack: this.actual set from storage call_stack: call.result
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "combine_items_list_of_2_max_stack"
data modify storage call_stack: this.array set value [{id:"minecraft:feather",Count:63b, Slot:0b},{id:"minecraft:feather",Count:2b, Slot:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:feather",Count:64b, Slot:0b},{id:"minecraft:feather",Count:1b, Slot:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/items/combine
data modify storage call_stack: this.actual set from storage call_stack: call.result
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop