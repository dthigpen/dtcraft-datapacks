function call_stack:push
data modify storage call_stack: this.test_name set value "distribute_0_stacked"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set from storage call_stack: this.input

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/crafter/distribute_items
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
#tellraw @p [{"nbt":"this.expected","storage":"call_stack:"}]
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop


function call_stack:push
data modify storage call_stack: this.test_name set value "distribute_1_stacked"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:3b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:1b},{id:"minecraft:cobblestone",Slot:4b,Count:1b},{id:"minecraft:cobblestone",Slot:5b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/crafter/distribute_items
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]

function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "distribute_1_stacked_0_free"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:3b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b},{id:"minecraft:cobblestone",Slot:4b,Count:1b},{id:"minecraft:slime_ball",Slot:5b,Count:1b},{id:"minecraft:cobblestone",Slot:6b,Count:1b},{id:"minecraft:slime_ball",Slot:7b,Count:1b},{id:"minecraft:cobblestone",Slot:8b,Count:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:3b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b},{id:"minecraft:cobblestone",Slot:4b,Count:1b},{id:"minecraft:slime_ball",Slot:5b,Count:1b},{id:"minecraft:cobblestone",Slot:6b,Count:1b},{id:"minecraft:slime_ball",Slot:7b,Count:1b},{id:"minecraft:cobblestone",Slot:8b,Count:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/crafter/distribute_items
data modify storage call_stack: this.actual set from storage call_stack: call.result

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
#tellraw @p [{"nbt":"this.expected","storage":"call_stack:"}]
execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "distribute_1_stacked_1_free"
data modify storage call_stack: this.input set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:3b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b},{id:"minecraft:cobblestone",Slot:4b,Count:1b},{id:"minecraft:slime_ball",Slot:5b,Count:1b},{id:"minecraft:cobblestone",Slot:6b,Count:1b},{id:"minecraft:slime_ball",Slot:7b,Count:1b}]
data modify storage call_stack: this.expected set value [{id:"minecraft:cobblestone",Slot:0b,Count:1b},{id:"minecraft:cobblestone",Slot:1b,Count:2b},{id:"minecraft:cobblestone",Slot:8b,Count:1b},{id:"minecraft:cobblestone",Slot:2b,Count:1b},{id:"minecraft:slime_ball",Slot:3b,Count:1b},{id:"minecraft:cobblestone",Slot:4b,Count:1b},{id:"minecraft:slime_ball",Slot:5b,Count:1b},{id:"minecraft:cobblestone",Slot:6b,Count:1b},{id:"minecraft:slime_ball",Slot:7b,Count:1b}]

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/crafter/distribute_items
data modify storage call_stack: this.actual set from storage call_stack: call.result

#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]
#tellraw @p [{"nbt":"this.expected","storage":"call_stack:"}]
execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

function call_stack:push
data modify storage call_stack: this.test_name set value "distribute_empty"
data modify storage call_stack: this.input set value []
data modify storage call_stack: this.expected set value []

data modify storage call_stack: call.arg0 set from storage call_stack: this.input
function dt.crafting:api/crafter/distribute_items
data modify storage call_stack: this.actual set from storage call_stack: call.result
#tellraw @p [{"nbt":"this.actual","storage":"call_stack:"}]

execute store success score result dt.tmp run data modify storage call_stack: this.actual set from storage call_stack: this.expected

execute if score result dt.tmp = #not_equal dt.enum run tellraw @p ["",{"text":"Test Failed: ","color":"dark_red"},{"nbt":"this.test_name","storage":"call_stack:"}]
execute if score result dt.tmp = #equal dt.enum run tellraw @p ["",{"text":"Test Passed: ","color":"dark_green"},{"nbt":"this.test_name","storage":"call_stack:"}]
function call_stack:pop

