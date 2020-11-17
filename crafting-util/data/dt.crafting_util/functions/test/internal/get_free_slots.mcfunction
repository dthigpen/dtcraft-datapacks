function call_stack:push
data modify storage call_stack: this.test_name set value "crafter/get_free_slots_0_items"
data modify storage call_stack: this.input set value []
data modify storage call_stack: this.expected set value [0,1,2,3,4,5,6,7,8]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting_util:internal/crafter/get_free_slots
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "crafter/get_free_slots_1_item"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:7b,Count:2b}]
data modify storage call_stack: this.expected set value [0,1,2,3,4,5,6,8]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting_util:internal/crafter/get_free_slots
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "crafter/get_free_slots_9_items"
data modify storage call_stack: this.input set value [{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b}]
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting_util:internal/crafter/get_free_slots
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "crafter/get_free_slots_10_items"
data modify storage call_stack: this.input set value [{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b}]
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting_util:internal/crafter/get_free_slots
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop