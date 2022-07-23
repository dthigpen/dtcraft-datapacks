data modify storage call_stack: this.test_name set value "distribute_slots_0_stacked"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set from storage call_stack: this.input

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg2 set value [4,5,6,7,8]
function dt.crafting:internal/crafter/distribute_slots
data modify storage call_stack: this.actual set from storage call_stack: call.return

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]


data modify storage call_stack: this.test_name set value "distribute_slots_1_stacked"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:3b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:4b,Count:1b},{id:"minecraft:cobblestone",Slot:5b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg2 set value [4,5,6,7,8]
function dt.crafting:internal/crafter/distribute_slots
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]


data modify storage call_stack: this.test_name set value "distribute_slots_1_stacked_0_free"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:3b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:3b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg2 set value []
function dt.crafting:internal/crafter/distribute_slots
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data modify storage call_stack: this.test_name set value "distribute_slots_1_stacked_1_free"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:3b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:2b},{id:"minecraft:cobblestone",Slot:4b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg2 set value [4]
function dt.crafting:internal/crafter/distribute_slots
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

data modify storage call_stack: this.test_name set value "distribute_slots_empty"
data modify storage call_stack: this.input set value []
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
data modify storage call_stack: call.arg1 set value []
data modify storage call_stack: call.arg2 set value [4]
function dt.crafting:internal/crafter/distribute_slots
data modify storage call_stack: this.actual set from storage call_stack: call.return
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
#tellraw @p [{"nbt":"this.expected","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
data modify storage test: array1 set from storage call_stack: this.actual
data modify storage test: array2 set from storage call_stack: this.expected
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

