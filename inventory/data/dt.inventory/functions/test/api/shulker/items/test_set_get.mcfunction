function call_stack:push
data modify storage call_stack: this.test_name set value "set_get_items_empty_list"
data modify storage call_stack: this.array set value []
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/shulker/items/set
function dt.inventory:api/shulker/items/get
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "set_items_bad_slot_number"
data modify storage call_stack: this.array set value [{id:"minecraft:feather",Count:1b,Slot:-1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:feather",Count:1b,Slot:0b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/shulker/items/set
function dt.inventory:api/shulker/items/get
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop
