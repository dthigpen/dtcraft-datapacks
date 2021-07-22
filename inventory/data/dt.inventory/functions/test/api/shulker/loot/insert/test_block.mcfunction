function call_stack:push
data modify storage call_stack: this.test_name set value "loot_insert_block_empty_list"
data modify storage call_stack: this.array set value []
data modify storage call_stack: this.expected set value []
function dt.inventory:api/shulker/items/clear1
function dt.inventory:api/shulker/items/clear2
data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/shulker/items/set
execute positioned 2999999 254 2999999 run function dt.inventory:api/shulker/loot/insert/block
function dt.inventory:api/shulker/items/get2
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "loot_insert_block_non_empty"
data modify storage call_stack: this.array set value [{id:"minecraft:feather",Count:1b,Slot:-1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:feather",Count:1b,Slot:0b}]
function dt.inventory:api/shulker/items/clear1
function dt.inventory:api/shulker/items/clear2
data modify storage call_stack: call.arg0 set from storage call_stack: this.array
function dt.inventory:api/shulker/items/set
execute positioned 2999999 254 2999999 run function dt.inventory:api/shulker/loot/insert/block
function dt.inventory:api/shulker/items/get2
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop